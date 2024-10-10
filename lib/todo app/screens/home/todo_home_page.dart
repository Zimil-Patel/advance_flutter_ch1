import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../provider/todo_provider.dart';
import 'components/add_task_button.dart';
import 'components/todo_app_bar.dart';
import 'components/todo_list_tile.dart';

class TodoHomePage extends StatelessWidget {
  const TodoHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var providerT = Provider.of<ToDoProvider>(context);
    var providerF = Provider.of<ToDoProvider>(context, listen: false);

    return Scaffold(

      // appBar
      appBar: todoAppBar(context),


      // Body
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


      // Floating action buttons
      floatingActionButton: AddTaskButton(providerF: providerF),
    );
  }
}
