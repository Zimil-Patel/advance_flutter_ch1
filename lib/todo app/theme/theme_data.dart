import 'package:flutter/material.dart';

import '../todo_utils.dart';

class ToDoTheme {
  static final ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    primarySwatch: Colors.blue,
    dialogBackgroundColor: Colors.white,
    scaffoldBackgroundColor: const Color(0xfff9faff),
    colorScheme: const ColorScheme.light(
      onSurface: Colors.white,
    ),
    textTheme: TextTheme(
      titleLarge: TextStyle(
        color: Colors.black,
        fontSize: height! * 0.035,
        fontWeight: FontWeight.w600,
      ),
      titleMedium: TextStyle(
        color: Colors.grey,
        fontSize: height! * 0.030,
        fontWeight: FontWeight.w500,
      ),
      bodySmall: const TextStyle(color: Colors.black),
      bodyMedium: const TextStyle(color: Colors.black),
      bodyLarge: const TextStyle(color: Colors.black),
    ),
    radioTheme: RadioThemeData(fillColor: MaterialStateColor.resolveWith((states) => Colors.blue)),
  );

  static final ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    primarySwatch: Colors.blue,
    dialogBackgroundColor: Colors.grey[900],
    colorScheme: ColorScheme.dark(
      onSurface: const Color(0xff666666).withOpacity(0.2),
      onSecondaryContainer: Colors.grey,
    ),
    textTheme: TextTheme(
      titleLarge: TextStyle(
        color: Colors.white,
        fontSize: height! * 0.035,
        fontWeight: FontWeight.w600,
      ),
      titleMedium: TextStyle(
        color: const Color(0xff666666),
        fontSize: height! * 0.030,
        fontWeight: FontWeight.w500,
      ),
      bodySmall: const TextStyle(color: Colors.white),
      bodyMedium: const TextStyle(color: Colors.white),
      bodyLarge: const TextStyle(color: Colors.white),
    ),
    radioTheme: RadioThemeData(fillColor: MaterialStateColor.resolveWith((states) => Colors.blue)),
  );
}
