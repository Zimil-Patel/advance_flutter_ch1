import 'package:advance_flutter_ch1/provider%20using%20counter/model/counter_model.dart';
import 'package:flutter/material.dart';

class CounterProvider extends ChangeNotifier{

  Counter count = Counter(0);

  // increase counter by 1
  void increaseCounter(){
    count.counter++;
    notifyListeners();
  }

  // decrease counter by 1
  void decreaseCounter(){
    count.counter--;
    notifyListeners();
  }
}