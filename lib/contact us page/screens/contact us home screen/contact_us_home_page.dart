import 'package:advance_flutter_ch1/todo%20app/todo_utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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

            const SizedBox(
              height: 10,
            ),

            CupertinoButton(
              onPressed: () {},
              padding: EdgeInsets.zero,
              child: Container(
                margin: const EdgeInsets.symmetric(vertical: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    width: 1.6,
                    color: Colors.lightBlue.withOpacity(0.2),
                  ),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: 35,
                      width: 35,
                      margin: const EdgeInsets.symmetric(
                          horizontal: 30, vertical: 12),
                      child: SvgPicture.asset(
                        'assets/svg/phone.svg',
                        color: Colors.lightBlue,
                        fit: BoxFit.cover,
                      ),
                    ),
                     Expanded(
                      flex: 2,
                      child: Text('+91 7043546897', style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        fontSize: height * 0.016,
                        fontWeight: FontWeight.w600
                      ),),
                    ),
                    const Spacer(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
