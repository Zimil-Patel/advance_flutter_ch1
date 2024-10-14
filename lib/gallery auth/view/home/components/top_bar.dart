import 'package:flutter/material.dart';


class TopBar extends StatelessWidget {
  const TopBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        AlbumsButton(),

        Spacer(),

        Icon(Icons.search),

        SizedBox(width: 20,),
      ],
    );
  }
}

class AlbumsButton extends StatelessWidget {
  const AlbumsButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 16),
      decoration: BoxDecoration(
          color: Colors.lightBlue.withOpacity(0.2),
          borderRadius: BorderRadius.circular(22)
      ),
      child: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Albums', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),),
            SizedBox(
              width: 20,
            ),
            Icon(Icons.arrow_drop_down),
          ],
        ),
      ),
    );
  }
}

