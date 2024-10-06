import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../provider/theme_provider.dart';

class ThemeSwitch extends StatelessWidget {
  const ThemeSwitch({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Switch(
      value:  Provider.of<ThemeProvider>(context, listen: true).isDark,
      onChanged: (value) => Provider.of<ThemeProvider>(context, listen: false).toggleTheme(),
    );
  }
}
