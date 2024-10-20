import 'package:flutter/material.dart';

import 'outlined_text_box.dart';

class ContactContent extends StatelessWidget {
  const ContactContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        OutlinedTextBox(
          hintText: 'Email',
          textInputType: TextInputType.emailAddress,
          iconData: Icons.email,
        ),
        OutlinedTextBox(
          hintText: 'Address',
          textInputType: TextInputType.streetAddress,
          iconData: Icons.home,
          maxLine: 5,
        ),
        OutlinedTextBox(
          hintText: 'Mobile No',
          textInputType: TextInputType.number,
          iconData: Icons.call,
        ),
      ],
    );
  }
}