import 'package:advance_flutter_ch1/todo%20app/screens/home/components/alert_dialog.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../provider/todo_provider.dart';

class AddTaskButton extends StatelessWidget {
  const AddTaskButton({
    super.key,
    required this.providerF,
  });

  final ToDoProvider providerF;

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
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
    );
  }
}
