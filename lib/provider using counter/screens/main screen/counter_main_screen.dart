
import 'package:advance_flutter_ch1/provider%20using%20counter/provider/counter_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'components/action_buttons.dart';
import 'components/theme_switch.dart';

class CounterMainScreen extends StatelessWidget {
  const CounterMainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        title: const Text('Counter using provider'),
        actions: const [
          ThemeSwitch(),
        ],
      ),
      body: Center(
        child: Text(
          'Counter : ${Provider.of<CounterProvider>(context, listen: true).count.counter}',
          style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 30),
        ),
      ),
      floatingActionButton: const ActionButtons(),
    );
  }
}


