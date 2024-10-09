import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../provider/image_provider.dart';

class SaveImageButton extends StatelessWidget {
  const SaveImageButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    var imageProviderF = Provider.of<ChantImageProvider>(context, listen: false);

    return IconButton(
        onPressed: () async {

          await imageProviderF.saveImageToGallery();

          const snackBar = SnackBar(
            content: Text('Image Saved!'),
            duration: Duration(seconds: 2),
          );
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        },
        icon: const Icon(Icons.save_alt));
  }
}