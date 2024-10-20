import 'package:flutter/material.dart';

AppBar themeAppBar(BuildContext context) {
  return AppBar(
    backgroundColor: Colors.transparent,
    leading: Icon(Icons.arrow_back_ios_rounded, color: Theme.of(context).colorScheme.onSecondary,),
    actions: [
      Padding(
        padding: const EdgeInsets.only(right: 20.0),
        child: Icon(Icons.add_circle_outline_rounded, color: Theme.of(context).colorScheme.onSecondary,),
      ),
    ],
  );
}