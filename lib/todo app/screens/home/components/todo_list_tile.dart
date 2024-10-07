import 'package:advance_flutter_ch1/todo%20app/model/todo_model.dart';
import 'package:advance_flutter_ch1/todo%20app/todo_utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../provider/todo_provider.dart';
import 'alert_dialog.dart';

class TodoListTile extends StatelessWidget {
  const TodoListTile({
    super.key,
    required this.data,
    required this.index,
  });

  final ToDoModel data;
  final int index;

  @override
  Widget build(BuildContext context) {

    var providerT = Provider.of<ToDoProvider>(context);
    var providerF = Provider.of<ToDoProvider>(context, listen: false);

    String title = data.title;
    String des = data.description;
    String time = data.time;
    Color priority = data.priority;
    bool isComplete = data.isComplete;

    return Container(
      height: 130,
      width: width,
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 14),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.onSurface,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // priority indicator
          Container(
            height: 124,
            width: 6,
            decoration: BoxDecoration(
                color: priority, borderRadius: BorderRadius.circular(6)),
          ),

          // Complete icons
          CupertinoButton(
            padding: EdgeInsets.zero,
            onPressed: () {
              providerF.markAsComplete(index);
            },
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: CircleAvatar(
                radius: 24,
                backgroundColor: priority.withOpacity(0.5),
                child: Icon(
                  isComplete ? Icons.done : Icons.radio_button_off,
                  size: 30,
                  color: priority,
                ),
              ),
            ),
          ),

          // Title, Description, Time
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Spacer(),
                // title
                Text(
                  title,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        fontSize: height! * 0.02,
                      ),
                ),

                // Description
                Text(
                  des,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
                        fontSize: height! * 0.018,
                      ),
                ),
                const Spacer(),

                // Time, Edit , delete
                Row(
                  children: [
                    Text(
                      time,
                      style: Theme.of(context).textTheme.titleLarge!.copyWith(
                            fontSize: height! * 0.020,
                          ),
                    ),
                    const Spacer(),

                    // edit button
                    CupertinoButton(
                      child: const Icon(
                        Icons.edit,
                        color: Colors.grey,
                      ),
                      onPressed: () {
                        providerF.toggleIsForEdit(true);
                        showDialog(context: context, barrierDismissible: false, builder: (context) => CustomAlertDialog(index: index,),);
                      },
                    ),

                    // delete button
                    CupertinoButton(
                      child: Icon(
                        Icons.delete,
                        color: highPriority.withOpacity(0.6),
                      ),
                      onPressed: () {
                        providerF.removeAt(index);
                      },
                    ),
                  ],
                ),
                const Spacer(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
