import 'package:advance_flutter_ch1/chant%20app/screens/components/save_img_button.dart';
import 'package:flutter/material.dart';

AppBar myAppBar() {
  return AppBar(
    title: const Text('Just Counter'),
    elevation: 2,
    centerTitle: false,
    shadowColor: Colors.black.withOpacity(0.5),
    surfaceTintColor: Colors.black,

    actions: const [
      SaveImageButton(),
    ],
    
    leading: const Icon(Icons.menu),
  );
}

