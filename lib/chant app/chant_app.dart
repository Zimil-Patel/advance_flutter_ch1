import 'package:advance_flutter_ch1/chant%20app/screens/chant_home_page.dart';
import 'package:flutter/material.dart';

class ChantApp extends StatelessWidget {
  const ChantApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: const ChantHomePage(),
    );
  }
}
