import 'package:flutter/material.dart';

class ThemeInfo {
  //LightTheme
  static final ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: const Color(0xffffffff),
    brightness: Brightness.light,
    textTheme: const TextTheme(
      titleSmall: TextStyle(
        color: Colors.black,
      ),
    ),
    colorScheme: const ColorScheme.light(
      primary: Color(0xff9a29aa), //switch color
      secondary: Color(0xff6cac6d), // grid color
      surface: Color(0xff3897e0), // setting icon color
      onPrimary: Color(0xffcb8b7f), //message icon color
      onSecondary: Colors.grey,
    ),
  );

  //DarkTheme
  static final ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: const Color(0xff000000),
    brightness: Brightness.light,
    textTheme: const TextTheme(
      titleSmall: TextStyle(
        color: Colors.white,
      ),
    ),
    colorScheme: const ColorScheme.light(
      primary: Color(0xfff6990a), //switch color
      secondary: Color(0xff3470a3), // grid icon color
      surface: Color(0xffce3164), //setting icon color
      onPrimary: Color(0xff8f8847), // message icon color
      onSecondary: Colors.white,
    ),
  );
}