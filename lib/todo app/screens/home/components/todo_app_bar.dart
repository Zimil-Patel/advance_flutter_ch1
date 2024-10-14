import 'package:flutter/material.dart';

import 'animated_theme_button.dart';

AppBar todoAppBar(BuildContext context) {
  return AppBar(
    elevation: 4,
    centerTitle: false,
    shadowColor: Colors.black.withOpacity(0.5),
    surfaceTintColor: Colors.transparent,
    title: RichText(
      text: TextSpan(children: [
        TextSpan(
          text: 'Today\'s',
          style: Theme.of(context).textTheme.titleLarge,
        ),
        TextSpan(
            text: '  Tasks',
            style: Theme.of(context).textTheme.titleMedium),
      ]),
    ),
    actions: const [
      ThemeAnimatedButton(),
    ],
  );
}