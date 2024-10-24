import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../screens/home page/intro_app_home_page.dart';

class IntroProvider extends ChangeNotifier {

  int currentPage = 0;
  bool isIntroCompleted = false;

  // goto next page
  Future<void> gotoNext() async {
    currentPage++;
    notifyListeners();
  }
  // jump to page
  Future<void> jumpTpPage(int value) async {
    currentPage = value;
    notifyListeners();
  }

  // goto home page
  Future<void> gotoHomePage(BuildContext context) async {
    await saveIntroPreference(true);
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const IntroAppHomePage(),),);
  }

  // save to shared preference
  Future<void> saveIntroPreference(bool value) async {
    isIntroCompleted = value;
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setBool('isIntroCompleted', value);

  }



  // get shared preference
  Future<void> getLocalPreference() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    isIntroCompleted = pref.getBool('isIntroCompleted') ?? false;

    notifyListeners();
  }
}