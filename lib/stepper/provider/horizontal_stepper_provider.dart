import 'package:flutter/material.dart';

class HorizontalStepperProvider extends ChangeNotifier{

  int stepValue = 0;

  // INCREASE STEP VALUE
  nextStep(BuildContext context){
    if (stepValue < 2){
      stepValue++;
      notifyListeners();
    } else {
      submit(context);
    }
  }

  // DECREASE STEP VALUE
  previousStep(){
    if (stepValue > 0){
      stepValue--;
      notifyListeners();
    }
  }

  // JUMP TO INDEX
  gotoStep(int value){
    stepValue = value;
    notifyListeners();
  }


  // SHOW SNACK BAR
  submit(BuildContext context){
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Submitted'),
        duration: Duration(seconds: 2), // Duration of the SnackBar
      ),
    );

  }
  
}