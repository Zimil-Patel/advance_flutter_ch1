import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../../../provider/intro_provider.dart';

class FinalPageBottomNavigation extends StatelessWidget {
  const FinalPageBottomNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    IntroProvider introProviderF = Provider.of<IntroProvider>(context, listen: false);

    return Padding(
      padding: const EdgeInsets.only(bottom: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CupertinoButton(
            padding: EdgeInsets.zero,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: const Color(0xff3590fe),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 10,
                    spreadRadius: 2,
                    offset: const Offset(0, 8),
                    color: const Color(0xff3590fe).withOpacity(0.2),
                  ),
                ],
              ),
              child: Text(
                'Get Started',
                style: GoogleFonts.varelaRound(
                  textStyle: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            onPressed: () {

              // goto home page and saving shared preference
              introProviderF.gotoHomePage(context);

            },
          ),
        ],
      ),
    );
  }
}
