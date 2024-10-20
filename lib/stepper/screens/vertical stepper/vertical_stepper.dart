import 'package:advance_flutter_ch1/stepper/provider/vertical_stepper_provider.dart';
import 'package:advance_flutter_ch1/stepper/screens/horizontal%20stepper/horizontal_stepper.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'components/text_box.dart';

class VerticalStepper extends StatelessWidget {
  const VerticalStepper({super.key});

  @override
  Widget build(BuildContext context) {
    var providerT = Provider.of<VerticalStepperProvider>(context);
    var providerF =
        Provider.of<VerticalStepperProvider>(context, listen: false);

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
        )),
        child: Stepper(
          // CURRENT STEP VALUE IN PROVIDER
          currentStep: providerT.stepValue,

          // GOTO PREVIOUS STEP
          onStepCancel: () {
            providerF.previousStep();
          },

          // GOTO NEXT STEP
          onStepContinue: () {
            providerF.nextStep(context);
          },

          // JUMP TO INDEX
          onStepTapped: (value) {
            providerF.gotoStep(value);
          },

          stepIconBuilder: (stepIndex, stepState) =>
              stepIndex <= providerT.stepValue
                  ? const Icon(
                      Icons.done,
                      color: Colors.white,
                      size: 14,
                    )
                  : null,

          // STEPS
          steps: [
            //ACCOUNT
            Step(
              title: const Text('Account'),
              content: const TextInputBox(
                hintText: 'Account Number',
                textInputType: TextInputType.number,
              ),
              isActive: providerT.stepValue >= 0 ? true : false,
            ),

            //ADDRESS
            Step(
              title: const Text('Address'),
              content: const TextInputBox(
                hintText: 'Address',
                textInputType: TextInputType.streetAddress,
              ),
              isActive: providerT.stepValue >= 1 ? true : false,
            ),

            //MOBILE NUMBER
            Step(
              title: const Text('Mobile Number'),
              content: const TextInputBox(
                hintText: 'Mobile Number',
                textInputType: TextInputType.number,
              ),
              isActive: providerT.stepValue >= 2 ? true : false,
            ),
          ],
        ),
      ),

      // FLOATING ACTION BUTTON TO SWITCH
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const HorizontalStepper(),));
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
