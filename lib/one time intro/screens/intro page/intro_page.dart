import 'package:advance_flutter_ch1/one%20time%20intro/screens/intro%20page/components/final_page_bottom_navigation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../provider/intro_provider.dart';
import 'components/bottom_navigation.dart';
import 'components/heading_and_description.dart';
import 'components/intro_image.dart';
import 'components/intro_page_app_bar.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // app bar
        appBar: introPageAppBar(context: context),

        //body
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: Column(
            children: [
              // image
              const IntroImage(),

              const Spacer(),

              // heading and description
              const HeadingAndDescription(),

              const Spacer(
                flex: 2,
              ),

              // bottom navigation
              SafeArea(
                child: Provider.of<IntroProvider>(context).currentPage == 2 ? const FinalPageBottomNavigation() : const BottomNavigation(),
              ),
            ],
          ),
        ),
    );
  }
}
