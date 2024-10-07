import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'components/todo_app_bar.dart';
import 'components/todo_list_tile.dart';

class TodoHomePage extends StatelessWidget {
  const TodoHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: todoAppBar(context),
      body: const SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            TodoListTile(),
            TodoListTile(),
            TodoListTile(),
            TodoListTile(),
            TodoListTile(),
            TodoListTile(),
            SizedBox(
              height: 200,
            ),
          ],
        ),
      ),

      floatingActionButton: CupertinoButton(
        color: Theme.of(context).colorScheme.onSecondaryContainer,
        borderRadius: BorderRadius.circular(30),
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 16),
        onPressed: (){},
        child: const Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.add),
            Text('Add'),
          ],
        ),
      ),
    );
  }
}

