
import 'package:advance_flutter_ch1/chant%20app/model/chant_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ChantCounterProvider extends ChangeNotifier{

  ChantModel chantModel = ChantModel(totalCount: 0, currentCount: 0, malaCount: 0);


  // get local stored info
  Future<void> getLocalInfo() async {

    SharedPreferences preferences = await SharedPreferences.getInstance();
    chantModel.currentCount = preferences.getInt('currentCount') ?? 0;
    chantModel.totalCount = preferences.getInt('totalCount') ?? 0;
    chantModel.malaCount = preferences.getInt('malaCount') ?? 0;
    notifyListeners();
  }

  // Reset current count
  Future<void> resetCurrentCount() async {
    chantModel.currentCount = 0;
    await saveCurrentCount(chantModel.currentCount);
    notifyListeners();
  }

  // Save current
  Future<void> saveCurrentCount (int count) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.setInt('currentCount', count);
  }

  // Save total count
  Future<void> saveTotalCount (int count) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.setInt('totalCount', count);
  }

  // Save mala
  Future<void> saveMalaCount (int count) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.setInt('malaCount', count);
  }

  // increase total and current count
  Future<void> increaseCount() async {
    chantModel.currentCount++;
    chantModel.totalCount++;
    await saveCurrentCount(chantModel.currentCount);
    await saveTotalCount(chantModel.totalCount);
    await calculateMalaCount(chantModel.totalCount);
    notifyListeners();
  }

  // Calculate mala
  Future<void> calculateMalaCount(int totalCount) async {
    chantModel.malaCount = totalCount ~/ 108;
    await saveMalaCount(chantModel.malaCount);
  }
}