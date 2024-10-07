import 'package:flutter/material.dart';

import '../todo_utils.dart';

class ToDoTheme {
  static final ThemeData lightTheme = ThemeData.light().copyWith(
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
    ),
  );

  static final ThemeData darkTheme = ThemeData.dark().copyWith(
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
    ),
  );
}
