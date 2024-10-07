import 'package:advance_flutter_ch1/todo%20app/todo_utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class TodoListTile extends StatelessWidget {
  const TodoListTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
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
                color: highPriority,
                borderRadius: BorderRadius.circular(6)),
          ),

          // Complete icons
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: CircleAvatar(
              radius: 24,
              backgroundColor: highPriority.withOpacity(0.5),
              child: Icon(
                Icons.done,
                size: 30,
                color: highPriority,
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
                  'Meeting With Client',
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    fontSize: height! * 0.02,
                  ),
                ),

                // Description
                Text(
                  'Discuss about the tasks when will be',
                  overflow: TextOverflow.ellipsis,
                  style:
                  Theme.of(context).textTheme.titleMedium!.copyWith(
                    fontSize: height! * 0.018,
                  ),
                ),
                const Spacer(),

                // Time, Edit , delete
                Row(
                  children: [
                    Text(
                      '12:00 PM',
                      style: Theme.of(context)
                          .textTheme
                          .titleLarge!
                          .copyWith(
                        fontSize: height! * 0.020,
                      ),
                    ),
                    const Spacer(),
                    CupertinoButton(child: const Icon(Icons.edit, color: Colors.grey,), onPressed: () {

                    },),
                    CupertinoButton(child: Icon(Icons.delete, color: highPriority.withOpacity(0.6),), onPressed: () {

                    },),
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
