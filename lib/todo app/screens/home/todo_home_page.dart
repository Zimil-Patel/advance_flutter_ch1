import 'package:advance_flutter_ch1/todo%20app/screens/home/components/alert_dialog.dart';
import 'package:advance_flutter_ch1/todo%20app/todo_utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../model/todo_model.dart';
import '../../provider/todo_provider.dart';
import 'components/todo_app_bar.dart';
import 'components/todo_list_tile.dart';

class TodoHomePage extends StatelessWidget {
  const TodoHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var providerT = Provider.of<ToDoProvider>(context);
    var providerF = Provider.of<ToDoProvider>(context, listen: false);

    return Scaffold(
      appBar: todoAppBar(context),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            ...List.generate(
              providerT.todoList.length,
              (index) => TodoListTile(
                data: providerT.todoList[index],
                index: index,
              ),
            ),
            const SizedBox(
              height: 200,
            ),
          ],
        ),
      ),
      floatingActionButton: CupertinoButton(
        color: Theme.of(context).colorScheme.onSecondaryContainer,
        borderRadius: BorderRadius.circular(30),
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 16),
        onPressed: () {
          providerF.toggleIsForEdit(false);
          showDialog(
            context: context,
            barrierDismissible: false,
            builder: (context) => const CustomAlertDialog(),
          );
        },
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
