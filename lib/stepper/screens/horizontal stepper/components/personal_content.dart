import 'package:flutter/material.dart';

import 'outlined_text_box.dart';

class PersonalContent extends StatelessWidget {
  const PersonalContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        // FIRST NAME
        const OutlinedTextBox(
          iconData: Icons.person,
          hintText: 'First Name',
          textInputType: TextInputType.text,
        ),

        // LAST NAME
        const OutlinedTextBox(
          iconData: Icons.person,
          hintText: 'Last Name',
          textInputType: TextInputType.text,
        ),


        // MALE
        RadioMenuButton(
          value: 0,
          groupValue: 0,
          onChanged: (value) {},
          child: const Text(
            'Male',
            style: TextStyle(
                fontSize: 18, fontWeight: FontWeight.w400),
          ),
        ),

        // FEMALE
        RadioMenuButton(
          value: 1,
          groupValue: 0,
          onChanged: (value) {},
          child: const Text(
            'Female',
            style: TextStyle(
                fontSize: 18, fontWeight: FontWeight.w400),
          ),
        ),
      ],
    );
  }
}
