import 'package:flutter/material.dart';


class ProfileSection extends StatelessWidget {
  const ProfileSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const AspectRatio(
          aspectRatio: 3.5,
          child: CircleAvatar(
            backgroundImage: AssetImage('assets/images/profile/profile.jpg'),
          ),
        ),

        const SizedBox(
          height: 8,
        ),
        Text(
          'StaR BoY',
          style: Theme.of(context).textTheme.titleSmall!.copyWith(
            fontSize: 26,
            fontWeight: FontWeight.bold,
          ),
        ),


        const SizedBox(
          height: 50,
        ),
      ],
    );
  }
}
