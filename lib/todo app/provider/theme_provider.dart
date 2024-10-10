import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ToDoThemeProvider extends ChangeNotifier{
  bool isDark = false;

  // theme toggle method
  void toggle(){
    isDark = !isDark;
    saveTheme(isDark);
    notifyListeners();
  }

  // saveTheme
  Future<void> saveTheme(bool value) async{
    SharedPreferences preferences = await SharedPreferences.getInstance();
    await preferences.setBool('isDark', value);
  }

  // getTheme
  Future<void> getTheme() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    isDark = preferences.getBool('isDark') ?? false;
    notifyListeners();
  }
}