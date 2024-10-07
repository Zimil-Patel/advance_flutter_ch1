import 'dart:ui';

class ToDoModel {
  String title, description;
  String time;
  Color priority;
  bool isComplete;

  ToDoModel(
      {required this.title,
      required this.description,
      required this.time,
      required this.priority,
      required this.isComplete});

}
