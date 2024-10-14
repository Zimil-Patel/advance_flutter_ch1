import 'package:flutter/material.dart';

import 'components/gallery_grid.dart';
import 'components/popup_menu.dart';
import 'components/top_bar.dart';

class GalleryHomePage extends StatelessWidget {
  const GalleryHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // App bar
      appBar: AppBar(
        leading: const Icon(Icons.menu),
        centerTitle: true,
        elevation: 1,
        title: const Text('Gallery'),
        actions: const [
          PopupMenu(),
        ],
      ),

      // Body
      body: const SingleChildScrollView(
        child: Column(
          children: [
            TopBar(),
            GalleryGrid(),
          ],
        ),
      ),
    );
  }
}

