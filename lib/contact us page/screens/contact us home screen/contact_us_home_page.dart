import 'package:advance_flutter_ch1/todo%20app/todo_utils.dart';
import 'package:flutter/material.dart';

import 'components/contact_us_app_bar.dart';

class ContactUsHomePage extends StatelessWidget {
  const ContactUsHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: contactUsAppBar(context, height),

      // body
      body: Padding(
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

            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: Colors.lightBlue.withOpacity(0.2),
                ),
              ),
              child: Row(
                children: [

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
