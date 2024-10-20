import 'package:advance_flutter_ch1/stepper/screens/vertical%20stepper/vertical_stepper.dart';
import 'package:flutter/material.dart';

class StepperApp extends StatelessWidget {
  const StepperApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: VerticalStepper(),
    );
  }
}
