
import 'package:advance_flutter_ch1/provider%20using%20counter/provider/counter_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ActionButtons extends StatelessWidget {
  const ActionButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        FloatingActionButton(
          shape: const CircleBorder(),
          onPressed: () =>
              Provider.of<CounterProvider>(context, listen: false)
                  .decreaseCounter(),
          child: const Icon(Icons.remove),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: FloatingActionButton(
            shape: const CircleBorder(),
            onPressed: () =>
                Provider.of<CounterProvider>(context, listen: false)
                    .increaseCounter(),
            child: const Icon(Icons.add),
          ),
        ),

      ],
    );
  }
}
