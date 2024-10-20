import 'package:advance_flutter_ch1/stepper/provider/horizontal_stepper_provider.dart';
import 'package:advance_flutter_ch1/stepper/screens/vertical%20stepper/vertical_stepper.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'components/contact_content.dart';
import 'components/personal_content.dart';

class HorizontalStepper extends StatelessWidget {
  const HorizontalStepper({super.key});

  @override
  Widget build(BuildContext context) {
    var providerT = Provider.of<HorizontalStepperProvider>(context);


    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Flutter Stepper Demo',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
        ),
        backgroundColor: Colors.blue,
      ),

      body: Theme(
        data: ThemeData(
          colorScheme: ColorScheme.fromSwatch(
            primarySwatch: Colors.blue,
            backgroundColor: Colors.white,
          ),
        ),
        child: Stepper(
          type: StepperType.horizontal,
          elevation: 1,
          stepIconBuilder: (stepIndex, stepState) {
            if (stepIndex == providerT.stepValue && stepIndex <= 1) {
              return const Icon(
                Icons.edit,
                color: Colors.white,
                size: 14,
              );
            } else if (stepIndex == 2) {
              return const Icon(
                Icons.done,
                color: Colors.white,
                size: 14,
              );
            } else {
              return null;
            }
          },
          onStepContinue: () {
            providerT.nextStep(context);
          },
          onStepCancel: () {
            providerT.previousStep();
          },
          onStepTapped: (value) {
            providerT.gotoStep(value);
          },
          currentStep: providerT.stepValue,
          steps: [
            //ACCOUNT
            const Step(
              title: Text('Personal'),
              content: PersonalContent(),
              isActive: true,
            ),

            //ADDRESS
            const Step(
              title: Text('Contact'),
              content: ContactContent(),
              isActive: true,
            ),

            //MOBILE NUMBER
            Step(
              title: const Text('Upload'),
              content: Text(
                'Successfully Registered!',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              isActive: true,
            ),
          ],
        ),
      ),

      // FLOATING ACTION BUTTON TO SWITCH
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => const VerticalStepper(),
              ));
        },
        backgroundColor: Colors.blue,
        shape: const CircleBorder(),
        child: const Icon(
          Icons.swap_horiz_rounded,
          color: Colors.white,
        ),
      ),
    );
  }
}
