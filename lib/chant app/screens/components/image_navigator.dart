import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../provider/image_provider.dart';

class ImageNavigator extends StatelessWidget {
  const ImageNavigator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    var imageProviderF = Provider.of<ChantImageProvider>(context, listen: false);

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 14),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          IconButton(
            onPressed: () async {
              await imageProviderF.previousImage();
            },
            icon: const Icon(Icons.arrow_back_ios_new_rounded),
          ),
          Expanded(
            child: Center(
              child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 18, vertical: 6),
                  decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.7),
                      borderRadius: BorderRadius.circular(8)),
                  child: Text(
                    'Change Image',
                    style: TextStyle(
                        fontSize: MediaQuery.of(context).size.height * 0.018,
                        fontWeight: FontWeight.bold),
                  )),
            ),
          ),
          IconButton(
            onPressed: () async {
              await imageProviderF.nextImage();
            },
            icon: const Icon(Icons.arrow_forward_ios_rounded),
          )
        ],
      ),
    );
  }
}
