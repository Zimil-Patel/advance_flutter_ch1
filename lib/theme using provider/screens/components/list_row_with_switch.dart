import 'package:advance_flutter_ch1/todo%20app/provider/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/components/toggle/gf_toggle.dart';
import 'package:getwidget/types/gf_toggle_type.dart';
import 'package:provider/provider.dart';


class ListRowWithSwitch extends StatelessWidget {
  const ListRowWithSwitch({super.key});

  @override
  Widget build(BuildContext context) {

    ToDoThemeProvider providerT = Provider.of<ToDoThemeProvider>(context);
    ToDoThemeProvider providerF = Provider.of<ToDoThemeProvider>(context, listen: false);

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 14.0),
      child: Row(
        children: [
          // ICON
          Icon(
            providerT.isDark
                ? Icons.nightlight_round
                : Icons.sunny,
            color: Theme.of(context).colorScheme.primary,
          ),
          const SizedBox(
            width: 26,
          ),

          // TITLE
          Text(
            providerT.isDark
                ? 'Dark mode'
                : 'Light Mode',
            style: Theme.of(context).textTheme.titleSmall!.copyWith(
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),

          const Spacer(),

          // THEME TOGGLE SWITCH
          GFToggle(
            value: providerT.isDark,
            onChanged: (value) {
              providerF.toggle();
            },
            enabledText: '',
            disabledText: '',
            disabledThumbColor: Colors.purple,
            enabledTrackColor:
                Theme.of(context).colorScheme.primary.withOpacity(0.5),
            enabledThumbColor: Theme.of(context).colorScheme.primary,
            type: GFToggleType.custom,
          )

        ],
      ),
    );
  }
}