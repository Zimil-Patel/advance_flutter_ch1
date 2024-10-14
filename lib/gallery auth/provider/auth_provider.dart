import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:local_auth/local_auth.dart';

class AuthProvider extends ChangeNotifier {


  // method to authenticate
  Future<bool> authenticateUser(BuildContext context) async{
    final LocalAuthentication auth = LocalAuthentication();
    bool canAut = await auth.canCheckBiometrics && await auth.isDeviceSupported();

    if(canAut){
      return await auth.authenticate(localizedReason: "Verify to open hidden album");
    } else {
      log('Warning: Authentication issue!');
      return false;
    }


  }
}