import 'package:advance_flutter_ch1/one%20time%20intro/provider/intro_provider.dart';
import 'package:advance_flutter_ch1/one%20time%20intro/screens/home%20page/intro_app_home_page.dart';
import 'package:advance_flutter_ch1/one%20time%20intro/screens/intro%20page/intro_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class OneTimeIntroApp extends StatelessWidget {
  const OneTimeIntroApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Provider.of<IntroProvider>(context).isIntroCompleted ? const IntroAppHomePage(): const IntroPage(),
    );
  }
}
