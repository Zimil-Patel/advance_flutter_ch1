import 'package:advance_flutter_ch1/todo%20app/provider/theme_provider.dart';
import 'package:advance_flutter_ch1/todo%20app/screens/home/todo_home_page.dart';
import 'package:advance_flutter_ch1/todo%20app/theme/theme_data.dart';
import 'package:advance_flutter_ch1/todo%20app/todo_utils.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TodoApp extends StatelessWidget {
  const TodoApp({super.key});

  @override
  Widget build(BuildContext context) {

    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ToDoTheme.lightTheme,
      darkTheme:  ToDoTheme.darkTheme,
      themeMode: Provider.of<ToDoThemeProvider>(context).isDark
          ? ThemeMode.dark
          : ThemeMode.light,
      home: const TodoHomePage(),
    );
  }
}
