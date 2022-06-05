import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app/main.dart';
import 'package:quiz_app/services/FS.dart';

class EmailPasswordAuth {


  static Future LoginAuth(
      BuildContext context, String Email, String Password) async {

    print('Inside Login Auth Function');

    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) => Center(child: CircularProgressIndicator()));

    print('Inside Login Auth Function 2');

    try {
      print('Inside try block');
      await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: Email, password: Password);
    }
    catch(e) {
      print('Inside Catch Block');
      return 'problem';
    }

      navigatorKey.currentState!.popUntil((route) => route.isFirst);
    }


  static Future SignupAuth(BuildContext context, String Name, String Age,
      String Email, String Password) async {
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) => Center(child: CircularProgressIndicator()));

    try {
      print('Inside try block');
      UserCredential userCredential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: Email, password: Password);
      String uid = userCredential.user!.uid;
      FS.SaveUserDetails(uid, Name, Age);
      print('last line of try block');
    } catch (e) {
      print('Inside Catch Block');
      print(e);
    }

    navigatorKey.currentState!.popUntil((route) => route.isFirst);
  }

  static Future SignoutAuth() async {
    return await FirebaseAuth.instance.signOut();
  }
}
