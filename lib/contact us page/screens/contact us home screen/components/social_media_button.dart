import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialMediaButton extends StatelessWidget {
  const SocialMediaButton({
    super.key,
    required this.height,
    required this.uri,
    required this.svg,
    required this.label,
    this.showInAppWeb = false,
    this.border = true,
    this.margin,
  });

  final double height;
  final Uri uri;
  final String svg;
  final String label;
  final bool showInAppWeb;
  final bool border;
  final double? margin;

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      onPressed: () async {
        // launch in inAppWebView if showInAppWeb is true
        if (showInAppWeb) {
          await launchUrl(uri, mode: LaunchMode.inAppWebView);
        } else {
          await launchUrl(uri);
        }
      },
      padding: EdgeInsets.zero,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: !border
              ? null
              : Border.all(
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
              margin:
                  EdgeInsets.symmetric(horizontal: 30, vertical: margin ?? 12),
              child: SvgPicture.asset(
                'assets/svg/$svg.svg',
                color: Colors.lightBlue,
                fit: BoxFit.cover,
              ),
            ),
            Text(
              label,
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    fontSize: height * 0.016,
                    overflow: TextOverflow.ellipsis,
                    fontWeight: FontWeight.w600,
                  ),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
