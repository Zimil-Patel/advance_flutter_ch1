import 'package:advance_flutter_ch1/contact%20us%20page/screens/contact%20us%20home%20screen/components/social_media_button.dart';
import 'package:flutter/material.dart';

class ContactList extends StatelessWidget {
  const ContactList({
    super.key,
    required this.height,
  });

  final double height;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        // call
        SocialMediaButton(
          height: height,
          label: '+91-8160543491',
          svg: 'phone',
          uri: Uri.parse('tel:+91-8160543491'),
        ),

        // sms
        SocialMediaButton(
          height: height,
          label: '+91-8160543491',
          svg: 'sms',
          uri: Uri.parse('sms:+91-8160543491'),
        ),

        // email
        SocialMediaButton(
          height: height,
          label: 'nobitanobi1023@gmail.com',
          svg: 'mail',
          uri: Uri.parse(
              'mailto:nobitanobi1023@gmail.com?subject=Flutter&body=New%20Plugin'),
        ),
      ],
    );
  }
}

