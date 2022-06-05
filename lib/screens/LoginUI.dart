import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app/main.dart';
import 'package:quiz_app/screens/HomePageUI.dart';
import 'package:quiz_app/screens/SignupUI.dart';
import 'package:quiz_app/services/EmailPasswordAuth.dart';

class LoginUI extends StatelessWidget {
  LoginUI({Key? key}) : super(key: key);

  TextEditingController EmailController = TextEditingController();
  TextEditingController PasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(top: height * 0.2),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Login',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 40,
                      color: Colors.pink
                  )),
              SizedBox(height: 30),
              Container(
                constraints: BoxConstraints(maxWidth: 320, minWidth: 150),
                child: TextField(
                  controller: EmailController,
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                      hintText: 'Enter your Email',
                      labelText: 'Email',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50))),
                ),
              ),
              SizedBox(height: 30),
              Container(
                constraints: BoxConstraints(maxWidth: 320, minWidth: 150),
                child: TextField(
                  obscureText: true,
                  obscuringCharacter: '*',
                  controller: PasswordController,
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                      hintText: 'Enter your Password',
                      labelText: 'Password',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50))),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                child: Text('Login',
                    style: TextStyle(
                      fontSize: 20,
                    )),
                onPressed: () {
                  EmailPasswordAuth.LoginAuth(context, EmailController.text.trim(),
                          PasswordController.text.trim())
                      .then((value) {
                    if (value == 'problem') {
                      const snackbar = SnackBar(content: Text('Invalid Email or Password'));
                      navigatorKey.currentState!.popUntil((route) => route.isFirst);
                      ScaffoldMessenger.of(context).showSnackBar(snackbar);
                    } else {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => HomePageUI()));
                    }
                  });
                },
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have an account ? ",
                      style: TextStyle(
                        fontSize: 16,
                      )),
                  TextButton(
                    child: Text('Sign Up',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        )),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => SignupUI()));
                    },
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
