import 'package:flutter/material.dart';

class SocialMediaTitle extends StatelessWidget {
  const SocialMediaTitle({
    super.key,
    required this.height,
  });

  final double height;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 12.0),
          child: Text(
            'Social Media',
            style:
            Theme.of(context).textTheme.bodyMedium!.copyWith(
              fontSize: height * 0.024,
              overflow: TextOverflow.ellipsis,
              fontWeight: FontWeight.w900,
              color: Colors.lightBlue,
            ),
          ),
        ),
      ],
    );
  }
}
