import 'package:advance_flutter_ch1/one%20time%20intro%20/screens/home%20page/intro_app_home_page.dart';
import 'package:flutter/material.dart';


class OneTimeIntroApp extends StatelessWidget {
  const OneTimeIntroApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: IntroAppHomePage(),
    );
  }
}
