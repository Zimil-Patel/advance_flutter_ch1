import 'package:advance_flutter_ch1/provider%20using%20counter/provider/counter_provider.dart';
import 'package:advance_flutter_ch1/provider%20using%20counter/provider/theme_provider.dart';
import 'package:advance_flutter_ch1/provider%20using%20counter/screens/counter_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// 1. SwitchThemeScreen()

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
      ],
      child: const CounterScreen(),
    ),
  );
}
