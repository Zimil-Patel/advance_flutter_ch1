import 'package:flutter/material.dart';

import 'components/item_lists.dart';
import 'components/profile_section.dart';
import 'components/theme_app_bar.dart';

class ThemeHome extends StatelessWidget {
  const ThemeHome({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: themeAppBar(context),

      body: const Column(
        children: [

          ProfileSection(),

          ItemLists(),
        ],
      ),
    );
  }


}

