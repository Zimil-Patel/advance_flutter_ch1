import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_gallery_saver/image_gallery_saver.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ChantImageProvider extends ChangeNotifier {
  int currentImageIndex = 1;

  ChantImageProvider() {
    getCurrentImageIndex();
  }

  // nextImage
  Future<void> nextImage() async {
    if (currentImageIndex == 10) {
      currentImageIndex = 1;
    } else {
      currentImageIndex++;
    }
    await saveCurrentImageIndex();
    notifyListeners();
  }

  // previousImage
  Future<void> previousImage() async {
    if (currentImageIndex == 1) {
      currentImageIndex = 10;
    } else {
      currentImageIndex--;
    }
    await saveCurrentImageIndex();
    notifyListeners();
  }

  // saveCurrentImageIndex
  Future<void> saveCurrentImageIndex() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.setInt('imageIndex', currentImageIndex);
  }

  // saveImageToGallery
  Future<void> saveImageToGallery() async {
    log('-------------------- Called --------------------');

    ByteData byteData =
        await rootBundle.load('assets/images/image$currentImageIndex.jpg');
    Uint8List data = byteData.buffer.asUint8List();

    await ImageGallerySaver.saveImage(data, quality: 100);
    log('-------------------- Ended --------------------');
  }

  Future<void> getCurrentImageIndex() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    currentImageIndex = preferences.getInt('imageIndex') ?? 1;
    notifyListeners();
  }
}
