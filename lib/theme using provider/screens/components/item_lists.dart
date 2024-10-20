import 'package:advance_flutter_ch1/theme%20using%20provider/screens/components/list_row_with_switch.dart';
import 'package:advance_flutter_ch1/theme%20using%20provider/utils/lists/list_data.dart';
import 'package:flutter/material.dart';

import 'list_row.dart';

class ItemLists extends StatelessWidget {
  const ItemLists({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    List<Color> colors = [
      Theme.of(context).colorScheme.secondary,
      Theme.of(context).colorScheme.surface,
      Theme.of(context).colorScheme.onPrimary,
      Theme.of(context).colorScheme.primary,
    ];

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 24),
      child: Column(
        children: [
          const ListRowWithSwitch(),
          ...List.generate(
            listData.length,
            (index) => ListRow(model: listData[index], color: colors[index],),
          ),
        ],
      ),
    );
  }
}
