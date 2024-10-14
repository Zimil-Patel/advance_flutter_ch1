import 'package:advance_flutter_ch1/gallery%20auth/provider/auth_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../utils.dart';

class PopupMenu extends StatelessWidget {
  const PopupMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<Menu>(
      icon: const Icon(Icons.more_vert),
      onSelected: (Menu item) async {
        if(item == Menu.hidden){
          await Provider.of<AuthProvider>(context, listen: false).authenticateUser(context);
        }
      },
      itemBuilder: (context) => <PopupMenuEntry<Menu>>[

        const PopupMenuItem<Menu>(
          value: Menu.share,
          child: ListTile(
            leading: Icon(Icons.share),
            title: Text('Share'),
          ),
        ),

        const PopupMenuItem<Menu>(
          value: Menu.deleted,
          child: ListTile(
            leading: Icon(Icons.delete),
            title: Text('Deleted'),
          ),
        ),


        const PopupMenuItem<Menu>(
          value: Menu.select,
          child: ListTile(
            leading: Icon(Icons.check),
            title: Text('Select'),
          ),
        ),

        const PopupMenuItem<Menu>(
          value: Menu.hidden,
          child: ListTile(
            leading: Icon(Icons.visibility_off),
            title: Text('View Hidden'),
          ),
        ),
      ],
    );
  }
}
