import 'package:advance_flutter_ch1/todo%20app/todo_utils.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../provider/todo_provider.dart';

class CustomAlertDialog extends StatefulWidget {
  const CustomAlertDialog({super.key, this.index});

  final int? index;

  @override
  State<CustomAlertDialog> createState() => _CustomAlertDialogState();
}

class _CustomAlertDialogState extends State<CustomAlertDialog> {
  TextEditingController titleController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();

  int selectedPriority = 1;

  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    // Initialize the controllers based on whether we are editing
    var providerT = Provider.of<ToDoProvider>(context, listen: false);
    if (providerT.isForEditing) {
      titleController = TextEditingController(
          text: providerT.todoList[widget.index!].title);
      descriptionController = TextEditingController(
          text: providerT.todoList[widget.index!].description);
      selectedPriority = getPriority(providerT.todoList[widget.index!].priority);
    } else {
      // Initialize empty controllers when not editing
      titleController = TextEditingController();
      descriptionController = TextEditingController();
    }
  }

  @override
  Widget build(BuildContext context) {


    var providerT = Provider.of<ToDoProvider>(context);
    var providerF = Provider.of<ToDoProvider>(context, listen: false);


    return AlertDialog(
      title: Text(
        'Task Details',
        style: Theme.of(context).textTheme.bodyLarge,
      ),
      content: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Title TextField
            Form(
              key: _formKey,
              child: Column(
                children: [
                  TextFormField(
                    controller: titleController,
                    decoration: InputDecoration(
                      labelText: 'Title',
                      labelStyle: Theme.of(context).textTheme.bodyLarge,
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter a title';
                      }
                      return null;
                    },
                  ),

                  const SizedBox(height: 10),

                  // Description TextField
                  TextFormField(
                    controller: descriptionController,
                    decoration: InputDecoration(
                      labelText: 'Description',
                      labelStyle: Theme.of(context).textTheme.bodyLarge,
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter a description';
                      }
                      return null;
                    },
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),

            // Priority Radio Buttons
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Priority:'),
                RadioListTile<int>(
                  title: Text(
                    'High',
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  value: 0,
                  groupValue: selectedPriority,
                  onChanged: (int? value) {
                    setState(() {
                      selectedPriority = value!;
                    });
                  },
                ),
                RadioListTile<int>(
                  title: Text(
                    'Medium',
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  value: 1,
                  groupValue: selectedPriority,
                  onChanged: (int? value) {
                    setState(() {
                      selectedPriority = value!;
                    });
                  },
                ),
                RadioListTile<int>(
                  title: Text(
                    'Low',
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  value: 2,
                  groupValue: selectedPriority,
                  onChanged: (int? value) {
                    setState(() {
                      selectedPriority = value!;
                    });
                  },
                ),
              ],
            ),
          ],
        ),
      ),
      actions: [
        // Cancel Button
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Text('Cancel'),
        ),
        // Save Button
        ElevatedButton(
          onPressed: () {
            if (_formKey.currentState!.validate()) {
              if (providerT.isForEditing) {
                providerF.updateData(
                    title: titleController.text,
                    description: descriptionController.text,
                    time: DateTime.now(),
                    priority: selectedPriority,
                    index: widget.index!);
                    Navigator.of(context).pop();

              } else {
                providerF.addToList(
                  title: titleController.text,
                  description: descriptionController.text,
                  time: DateTime.now(),
                  priority: selectedPriority,
                );
                Navigator.of(context).pop();

              }
            }
          },
          child: const Text('Save'),
        ),
      ],
    );
  }

  int getPriority(Color priority) {
    if (priority == highPriority) {
      return 0;
    } else if (priority == mediumPriority) {
      return 1;
    } else {
      return 2;
    }
  }
}
