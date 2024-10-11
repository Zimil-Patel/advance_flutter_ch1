import 'package:flutter/material.dart';

AppBar contactUsAppBar(BuildContext context, double height) {
  return AppBar(
    centerTitle: false,
    title: Text(
        'Contact Us',
        style: Theme.of(context).textTheme.titleMedium!.copyWith(
          fontSize: height * 0.024,
          fontWeight: FontWeight.bold,
        )
    ),
    backgroundColor: Colors.transparent,
    leading: Icon(
      Icons.arrow_back_ios_new_rounded,
      color: Theme.of(context).colorScheme.tertiary,
    ),
  );
}