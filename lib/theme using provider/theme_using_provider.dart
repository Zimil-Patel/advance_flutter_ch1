import 'package:advance_flutter_ch1/theme%20using%20provider/screens/theme_home.dart';
import 'package:advance_flutter_ch1/theme%20using%20provider/utils/themes/theme_info.dart';
import 'package:advance_flutter_ch1/todo%20app/provider/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ThemeUsingProvider extends StatelessWidget {
  const ThemeUsingProvider({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeInfo.lightTheme,
      darkTheme: ThemeInfo.darkTheme,
      themeMode: Provider.of<ToDoThemeProvider>(context).isDark ? ThemeMode.dark : ThemeMode.light,
      home: const ThemeHome(),
    );
  }
}
