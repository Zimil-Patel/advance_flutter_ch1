import 'package:advance_flutter_ch1/contact%20us%20page/screens/contact%20us%20home%20screen/components/social_media_button.dart';
import 'package:advance_flutter_ch1/contact%20us%20page/screens/contact%20us%20home%20screen/components/social_media_title.dart';
import 'package:flutter/material.dart';

class SocialMediaList extends StatelessWidget {
  const SocialMediaList({
    super.key,
    required this.height,
  });

  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          width: 1.6,
          color: Colors.lightBlue.withOpacity(0.2),
        ),
      ),
      child: Column(
        children: [

          const SizedBox(
            height: 6,
          ),

          // Social media title
          SocialMediaTitle(height: height),

          Divider(
            color: Colors.lightBlue.withOpacity(0.2),
          ),


          // Github
          SocialMediaButton(
            height: height,
            uri: Uri.parse('https://github.com/Zimil-Patel'),
            svg: 'github',
            label: 'GitHub',
            showInAppWeb: true,
            border: false,
            margin: 0,
          ),

          Divider(
            color: Colors.lightBlue.withOpacity(0.2),
            indent: 18,
            endIndent: 18,
          ),


          // Linked In
          SocialMediaButton(
            height: height,
            uri: Uri.parse('https://www.linkedin.com/in/zimil-patel/'),
            svg: 'linkedin',
            label: 'LinkedIn',
            showInAppWeb: true,
            border: false,
            margin: 0,
          ),

          Divider(
            color: Colors.lightBlue.withOpacity(0.2),
            indent: 18,
            endIndent: 18,
          ),


          // Instagram
          SocialMediaButton(
            height: height,
            uri: Uri.parse('https://www.instagram.com/star_boy10_/'),
            svg: 'instagram',
            label: 'Instagram',
            showInAppWeb: true,
            border: false,
            margin: 0,
          ),

          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}

