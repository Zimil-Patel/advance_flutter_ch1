import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/image_provider.dart';
import 'components/counter_button.dart';
import 'components/details_bar.dart';
import 'components/image_navigator.dart';
import 'components/my_app_bar.dart';

class ChantHomePage extends StatelessWidget {
  const ChantHomePage({super.key});

  @override
  Widget build(BuildContext context) {

    var imageProviderT = Provider.of<ChantImageProvider>(context);

    return Scaffold(
      appBar: myAppBar(),

      //BODY
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            opacity: 0.4,
            image: AssetImage('assets/images/image${imageProviderT.currentImageIndex}.jpg'),
          ),
        ),
        child: const Column(
          children: [
            // Counters details and reset button
            DetailsBar(),

            ImageNavigator(),

            Spacer(),

            CounterButton(),

            Spacer(),
          ],
        ),
      ),
    );
  }
}

