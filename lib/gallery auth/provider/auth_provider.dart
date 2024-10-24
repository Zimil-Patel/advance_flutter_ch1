import 'dart:developer';

import 'package:advance_flutter_ch1/gallery%20auth/view/hidden/hidden_page.dart';
import 'package:flutter/material.dart';
import 'package:local_auth/local_auth.dart';

class AuthProvider extends ChangeNotifier {

  // method to authenticate
  Future<void> authenticateUser(BuildContext context) async{
    final LocalAuthentication auth = LocalAuthentication();
    bool canAut = await auth.canCheckBiometrics && await auth.isDeviceSupported();

    if(canAut){
      await auth.authenticate(localizedReason: "Verify to open hidden album");
      Navigator.push(context, MaterialPageRoute(builder: (context) => const HiddenPage(),));
    } else {
      log('Warning: Authentication issue!');
    }


  }
}