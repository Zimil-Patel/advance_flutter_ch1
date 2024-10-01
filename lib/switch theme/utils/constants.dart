import 'package:flutter/material.dart';

bool isDark = false;

ThemeData lightTheme = ThemeData(
  scaffoldBackgroundColor: const Color(0xfff8f8f8),
  textTheme: const TextTheme(
    titleLarge: TextStyle(
      color: Colors.black,
    ),
    titleSmall: TextStyle(
      color: Color(0xffa4a2a9),
      fontWeight: FontWeight.w500,
    ),
  ),
  colorScheme: const ColorScheme.light(
    primary: Color(0xffffffff),
    secondary: Color(0xffffcc00),
    surface: Color(0xfffd3b31),
  ),
);

ThemeData darkTheme = ThemeData(
  scaffoldBackgroundColor: const Color(0xff000000),
  brightness: Brightness.dark,
  textTheme: const TextTheme(
    titleLarge: TextStyle(
      color: Colors.white,
    ),
    titleSmall: TextStyle(
      color: Color(0xffa4a2a9),
      fontWeight: FontWeight.w500,
    ),
  ),
  colorScheme: const ColorScheme.dark(
    primary: Color(0xff1c1c1e),
    secondary: Color(0xffffd60a),
    surface: Color(0xffff4539),
  ),
);