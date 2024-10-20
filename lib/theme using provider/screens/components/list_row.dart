import 'package:flutter/material.dart';

import '../../model/list_model.dart';


class ListRow extends StatelessWidget {
  const ListRow({super.key, required this.model, required this.color,});

  final ListModel model;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 14.0),
      child: Row(
        children: [
          // ICON
          Icon(
            model.icon,
            color: color,
          ),
          const SizedBox(
            width: 26,
          ),

          // TITLE
          Text(
            model.text,
            style: Theme.of(context).textTheme.titleSmall!.copyWith(
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}