import 'dart:developer';

import 'package:advance_flutter_ch1/provider%20using%20counter/model/counter_model.dart';
import 'package:flutter/material.dart';

class CounterProvider extends ChangeNotifier{

  Counter count = Counter(0);

  // increase counter by 1
  void increaseCounter(){
    count.counter++;
    log(count.counter.toString());
    notifyListeners();
  }

  // decrease counter by 1
  void decreaseCounter(){
    if (count.counter >= 1){
      count.counter--;
    }
    notifyListeners();
  }
}