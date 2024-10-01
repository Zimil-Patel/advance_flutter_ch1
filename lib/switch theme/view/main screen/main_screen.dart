import 'package:advance_flutter_ch1/switch%20theme/utils/constants.dart';
import 'package:flutter/material.dart';

import 'components/theme_box.dart';

class SwitchThemeScreen extends StatefulWidget {
  const SwitchThemeScreen({super.key});

  @override
  State<SwitchThemeScreen> createState() => _SwitchThemeScreenState();
}

class _SwitchThemeScreenState extends State<SwitchThemeScreen> {
  void update() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {

    double height = MediaQuery.of(context).size.height;

    return MaterialApp(
      // assign light theme to app
      theme: lightTheme,
      // assign dark theme to app
      darkTheme: darkTheme,
      // assign theme mode to app
      themeMode: isDark ? ThemeMode.dark : ThemeMode.light,

      debugShowCheckedModeBanner: false,

      home: ThemeBox(height: height, update: update,),
    );
  }
}


