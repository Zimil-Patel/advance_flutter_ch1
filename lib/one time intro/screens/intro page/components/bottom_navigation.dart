import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../../../provider/intro_provider.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    IntroProvider introProviderT = Provider.of<IntroProvider>(context);
    IntroProvider introProviderF = Provider.of<IntroProvider>(context, listen: false);

    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(
          width: 20,
        ),


        // Index indicator
        ...List.generate(
          3,
              (index) => Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6.0),
            child: InkWell(
              onTap: () async {
                // navigate to clicked page
                await introProviderF.jumpTpPage(index);
              },
              child: Container(
                height: 8,
                width: 8,
                decoration: index == introProviderT.currentPage
                    ? BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  border: Border.all(
                      width: 1, color: Colors.blue),
                )
                    : BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(100),
                ),
              ),
            ),
          ),
        ),
        const Spacer(),


        // next button
        TextButton(
            onPressed: () async {
              // navigate to next page
              await introProviderF.gotoNext();
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Next',
                  style: GoogleFonts.varelaRound(
                    textStyle: const TextStyle(
                        height: 2,
                        fontSize: 20,
                        color: Colors.blue),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                const Icon(
                  Icons.arrow_forward_rounded,
                  color: Colors.blue,
                ),
              ],
            )),
      ],
    );
  }
}
