import 'package:advance_flutter_ch1/provider%20using%20counter/provider/counter_provider.dart';
import 'package:advance_flutter_ch1/provider%20using%20counter/provider/theme_provider.dart';
import 'package:advance_flutter_ch1/provider%20using%20counter/screens/counter_screen.dart';
import 'package:advance_flutter_ch1/todo%20app/provider/theme_provider.dart';
import 'package:advance_flutter_ch1/todo%20app/provider/todo_provider.dart';
import 'package:advance_flutter_ch1/todo%20app/todo_app.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// 1. SwitchThemeScreen()
// 2. CounterScreen()
// 3. ToDoApp()

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => ThemeProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => CounterProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => ToDoThemeProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => ToDoProvider(),
        ),
      ],
      builder: (context, child) => const TodoApp(),
    ),
  );
}
