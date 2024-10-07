import 'package:flutter/material.dart';

class ToDoThemeProvider extends ChangeNotifier{
  bool isDark = false;

  // theme toggle method
  void toggle(){
    isDark = !isDark;
    notifyListeners();
  }
}