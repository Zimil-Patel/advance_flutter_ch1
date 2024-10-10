import 'package:advance_flutter_ch1/todo%20app/model/todo_model.dart';
import 'package:advance_flutter_ch1/todo%20app/provider/ToDoLocalProvider.dart';
import 'package:advance_flutter_ch1/todo%20app/todo_utils.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ToDoProvider extends ChangeNotifier {
  bool isForEditing = true;
  List<ToDoModel> todoList = [];
  ToDoLocalProvider localProvider = ToDoLocalProvider();


  // method to add to list new task
  void addToList({
    required String title,
    required String description,
    required DateTime time,
    required int priority,
  }) {
    Color color;
    if (priority == 0) {
      color = highPriority;
    } else if (priority == 1) {
      color = mediumPriority;
    } else {
      color = lowPriority;
    }

    String formatted = DateFormat('hh:mm a').format(time);

    todoList.add(
      ToDoModel(
        title: title,
        description: description,
        time: formatted,
        priority: color,
        isComplete: false,
      ),
    );

    localProvider.setLists(todoList);

    notifyListeners();
  }


  // method to remove
  void removeAt(int index){
    todoList.removeAt(index);

    localProvider.setLists(todoList);

    notifyListeners();
  }

  // method to update
  void updateData({
    required String title,
    required String description,
    required DateTime time,
    required int priority,
    required int index,
  }){
    Color color;
    if (priority == 0) {
      color = highPriority;
    } else if (priority == 1) {
      color = mediumPriority;
    } else {
      color = lowPriority;
    }

    String formatted = DateFormat('hh:mm a').format(time);

    todoList[index].title = title;
    todoList[index].description = description;
    todoList[index].priority = color;
    todoList[index].time = formatted;

    localProvider.setLists(todoList);

    notifyListeners();
  }

  // toggle complete checkbox
  void markAsComplete(int index){
    todoList[index].isComplete = !todoList[index].isComplete;
    localProvider.setLists(todoList);
    notifyListeners();
  }

  // edit isForEditing
  void toggleIsForEdit(bool value){
    isForEditing = value;
    notifyListeners();
  }

  Future<void> refreshToDoList() async {
    todoList = await localProvider.getLists();
    notifyListeners();
  }
}
