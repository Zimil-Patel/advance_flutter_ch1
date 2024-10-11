import 'package:advance_flutter_ch1/contact%20us%20page/screens/contact%20us%20home%20screen/contact_us_home_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ContactUsApp extends StatelessWidget {
  const ContactUsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Colors.black,
        colorScheme: const ColorScheme.dark(
          tertiary: Colors.lightBlue,
        ),
        textTheme: TextTheme(
          titleMedium: GoogleFonts.varelaRound(
            textStyle: const TextStyle(color: Colors.lightBlue),
          ),
          bodyMedium: GoogleFonts.varelaRound(
            textStyle: const TextStyle(color: Colors.white),
          ),
        ),
      ),
      home: const ContactUsHomePage(),
    );
  }
}
