import 'package:advance_flutter_ch1/gallery%20auth/view/hidden/components/hidden_view_grid.dart';
import 'package:flutter/material.dart';

import 'components/hidden_section_bar.dart';

class HiddenPage extends StatelessWidget {
  const HiddenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 2,
        centerTitle: true,
        title: const Text('Hidden Album'),
      ),

      //Body
      body: const SingleChildScrollView(
        child: Column(
          children: [
            HiddenSectionBar(section: "Today"),

            HiddenViewGrid(length: 20, folder: "hidden1"),

            HiddenSectionBar(section: "Yesterday"),

            HiddenViewGrid(length: 10, folder: "hidden2",),
          ],
        ),
      ),
    );
  }
}
