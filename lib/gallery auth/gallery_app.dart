import 'package:advance_flutter_ch1/gallery%20auth/view/home/gallery_home_page.dart';
import 'package:flutter/material.dart';

class GalleryApp extends StatelessWidget {
  const GalleryApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: const GalleryHomePage(),
    );
  }
}
