import 'package:flutter/material.dart';

import 'components/contact_list.dart';
import 'components/contact_us_app_bar.dart';
import 'components/social_media_list.dart';

class ContactUsHomePage extends StatelessWidget {
  const ContactUsHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: contactUsAppBar(context, height),

      // body
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 34),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Helping text
              const Text(
                'If you have any queries, get in touch with us. We will be happy to help you!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                ),
              ),

              const SizedBox(
                height: 10,
              ),

              ContactList(height: height),

              const SizedBox(
                height: 20,
              ),

              SocialMediaList(height: height),
            ],
          ),
        ),
      ),
    );
  }
}
