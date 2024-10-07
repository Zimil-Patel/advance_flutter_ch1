import 'package:advance_flutter_ch1/todo%20app/provider/theme_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class ThemeAnimatedButton extends StatelessWidget {
  const ThemeAnimatedButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var themeTrue = Provider.of<ToDoThemeProvider>(context);
    var themeFalse = Provider.of<ToDoThemeProvider>(context, listen: false);

    return TweenAnimationBuilder(
      duration: const Duration(milliseconds: 400),
      tween: Tween<double>(begin: 0, end: themeTrue.isDark ? 6.2832 : -6.2832),
      builder: (context, value, child) => Transform.rotate(
        angle: value,
        child: CupertinoButton(
          child: Icon(
            !themeTrue.isDark ? Icons.sunny : Icons.nightlight_round,
            color: Theme.of(context).colorScheme.onSecondaryContainer,
          ),
          onPressed: () {
            Provider.of<ToDoThemeProvider>(context, listen: false).toggle();
          },
        ),
      ),
    );
  }
}
