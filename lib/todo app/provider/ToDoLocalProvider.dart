
import 'package:advance_flutter_ch1/todo%20app/model/todo_model.dart';
import 'package:advance_flutter_ch1/todo%20app/todo_utils.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ToDoLocalProvider {
  List<String> title = [];
  List<String> description = [];
  List<String> time = [];
  List<String> isComplete = [];
  List<String> priority = [];

  //saveLists
  Future<void> setLists(List<ToDoModel> todoList) async {
    title.clear();
    description.clear();
    time.clear();
    isComplete.clear();
    priority.clear();

    for (int i = 0; i < todoList.length; i++) {
      title.add(todoList[i].title);
      description.add(todoList[i].description);
      time.add(todoList[i].time);
      isComplete.add(todoList[i].isComplete.toString());
      priority.add(calculatePriority(todoList[i].priority).toString());
    }



    SharedPreferences preferences = await SharedPreferences.getInstance();
    await preferences.setStringList('title', title);
    await preferences.setStringList('description', description);
    await preferences.setStringList('time', time);
    await preferences.setStringList('isComplete', isComplete);
    await preferences.setStringList('priority', priority);

  }

  Future<List<ToDoModel>> getLists() async {
    List<ToDoModel> list = [];

    SharedPreferences preferences = await SharedPreferences.getInstance();
    title = preferences.getStringList('title') ?? [];
    description = preferences.getStringList('description') ?? [];
    time = preferences.getStringList('time') ?? [];
    isComplete = preferences.getStringList('isComplete') ?? [];
    priority = preferences.getStringList('priority') ?? [];

    for (int i = 0; i < title.length; i++) {
      list.add(ToDoModel(
        title: title[i],
        description: description[i],
        time: time[i],
        isComplete: bool.parse(isComplete[i]),
        priority: getPriorityColor(int.parse(priority[i])),
      ));
    }

    return list;
  }

  static int calculatePriority(Color value) {
    if (value == highPriority) {
      return 0;
    } else if (value == mediumPriority) {
      return 1;
    } else {
      return 2;
    }
  }

  static Color getPriorityColor(int value) {
    if (value == 0) {
      return highPriority;
    } else if (value == 1) {
      return mediumPriority;
    } else {
      return lowPriority;
    }
  }
}
