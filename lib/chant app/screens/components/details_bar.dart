import 'package:advance_flutter_ch1/chant%20app/screens/components/reset_button.dart';
import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:flutter/material.dart';

import 'counters_details.dart';
import 'custom_divider.dart';

class DetailsBar extends StatelessWidget {
  const DetailsBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
      child: SizedBox(
        child: BlurryContainer(
          height: MediaQuery.of(context).size.height / 6.5,
          width: MediaQuery.of(context).size.width,
          elevation: 10,
          color: Theme.of(context)
              .scaffoldBackgroundColor
              .withOpacity(0.7),
          child: const Row(
            children: [
              // Counter details
              CountersDetails(),

              Spacer(),

              // Divider
              CustomDivider(),

              Spacer(),

              // Reset Button
              ResetButton(),

              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
