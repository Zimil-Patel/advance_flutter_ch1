import 'dart:developer';

import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier{

  ThemeMode themeMode = ThemeMode.light;
  bool isDark = false;

  // toggleTheme
  void toggleTheme(){
    log(isDark.toString());
    if (isDark){
      themeMode = ThemeMode.light;
    } else {
      themeMode = ThemeMode.dark;
    }
    isDark = !isDark;
    notifyListeners();
  }
}