import 'package:flutter/material.dart';

class SaveImageButton extends StatelessWidget {
  const SaveImageButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {
          const snackBar = SnackBar(
            content: Text('Image Saved!'),
            duration: Duration(seconds: 2),
          );
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        },
        icon: const Icon(Icons.save_alt));
  }
}