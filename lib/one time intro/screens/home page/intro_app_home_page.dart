import 'package:flutter/material.dart';

class IntroAppHomePage extends StatelessWidget {
  const IntroAppHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff7f9f8),
      // app bar
      appBar: AppBar(
        title: const Text(
          'Home Page',
          style: TextStyle(
            fontWeight: FontWeight.w500,
          ),
        ),
        centerTitle: true,
        elevation: 2,
        shadowColor: Colors.black.withOpacity(0.7),
        surfaceTintColor: Colors.blue,
        backgroundColor: Colors.blueAccent.withOpacity(0.2),
      ),

      // body
      body: Center(
          child: RichText(
        text: const TextSpan(
          style: TextStyle(
            fontSize: 24,
            color: Colors.black,
          ),
          children: [
            TextSpan(text: 'Hey! '),
            TextSpan(
              text: 'StaR BoY,',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            TextSpan(
              text: '\nWelcome to ',
            ),
            TextSpan(
              text: 'FoodApp',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
      )),
    );
  }
}
