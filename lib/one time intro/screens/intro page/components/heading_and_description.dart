import 'package:advance_flutter_ch1/one%20time%20intro/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../../../provider/intro_provider.dart';

class HeadingAndDescription extends StatelessWidget {
  const HeadingAndDescription({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    IntroProvider introProviderT = Provider.of<IntroProvider>(context);


    return Column(
      children: [
        Text(
          introData[introProviderT.currentPage],
          style: GoogleFonts.varelaRound(
              textStyle: const TextStyle(
                  fontSize: 24, fontWeight: FontWeight.bold)),
        ),
        const SizedBox(
          height: 12,
        ),
        Text(
          'Lorem ipsum dolor sit amet, consectetuer\nadipiscing elit. Aenean commodo ligula\neget dolor.',
          textAlign: TextAlign.center,
          style: GoogleFonts.varelaRound(
            textStyle: const TextStyle(
              height: 2,
            ),
          ),
        ),
      ],
    );
  }
}