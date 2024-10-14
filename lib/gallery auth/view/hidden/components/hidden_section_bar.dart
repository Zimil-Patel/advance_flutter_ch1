import 'package:flutter/material.dart';

class HiddenSectionBar extends StatelessWidget {
  const HiddenSectionBar({
    super.key, required this.section,
  });

  final String section;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 14),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(section, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 24),),
          const Spacer(),
          const Text('Select', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue, fontSize: 16),),
        ],
      ),
    );
  }
}
