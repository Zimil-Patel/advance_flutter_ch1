import 'package:advance_flutter_ch1/switch%20theme/view/main%20screen/components/theme_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../utils/constants.dart';

class ThemeBox extends StatelessWidget {
  const ThemeBox({
    super.key,
    required this.height, required this.update,
  });

  final double height;
  final VoidCallback update;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body of application

      body: Center(
        child: Container(
          margin: EdgeInsets.symmetric(vertical: height / 8, horizontal: 20),
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.primary,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                blurRadius: 2,
                spreadRadius: 1,
              ),
            ],
          ),
          child: SizedBox(
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                const Spacer(),

                Text(
                  'Yo Man!',
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    fontWeight: FontWeight.bold,
                    fontSize: 38,
                  ),
                ),
                Text(
                  'It\'s a simple example of\ndark theme',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.titleSmall!.copyWith(
                    fontSize: 18
                  ),
                ),

                const Spacer(),

                CupertinoButton(
                  onPressed: (){
                    isDark = false;
                    update();
                  },
                  padding: EdgeInsets.zero,
                  child: ThemeButton(
                    height: height,
                    text: 'Light Theme',
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                ),

                CupertinoButton(
                  onPressed: (){
                    isDark = true;
                    update();
                  },
                  padding: EdgeInsets.zero,
                  child: ThemeButton(
                    height: height,
                    color: Theme.of(context).colorScheme.surface,
                    text: 'Dark Theme',
                  ),
                ),

                const Spacer(),

              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ContainerButton {
}
