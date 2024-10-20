import 'package:advance_flutter_ch1/one%20time%20intro/provider/intro_provider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

AppBar introPageAppBar({required BuildContext context}) {
  return AppBar(
    actions: [
      Provider.of<IntroProvider>(context).currentPage != 2 ? TextButton(
        onPressed: () async {

          await Provider.of<IntroProvider>(context, listen: false).jumpTpPage(2);

        },
        child: Text(
          'Skip',
          style: GoogleFonts.varelaRound(
            textStyle: const TextStyle(fontSize: 18, color: Colors.black),
          ),
        ),
      ) : const SizedBox(),
    ],
  );
}