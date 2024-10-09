import 'package:advance_flutter_ch1/chant%20app/provider/chant_count_provider.dart';
import 'package:advance_flutter_ch1/provider%20using%20counter/provider/counter_provider.dart';
import 'package:advance_flutter_ch1/provider%20using%20counter/provider/theme_provider.dart';
import 'package:advance_flutter_ch1/todo%20app/provider/theme_provider.dart';
import 'package:advance_flutter_ch1/todo%20app/provider/todo_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'chant app/chant_app.dart';
import 'chant app/provider/image_provider.dart';

// 1. SwitchThemeScreen()
// 2. CounterScreen()
// 3. ToDoApp()
// 4. ChantApp()

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  ChantCounterProvider provider = ChantCounterProvider();

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
        ChangeNotifierProvider(
          create: (context) => provider,
        ),
        ChangeNotifierProvider(
          create: (context) => ChantImageProvider(),
        )
      ],
      builder: (context, child) => const ChantApp(),
    ),
  );
}
