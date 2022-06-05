import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app/screens/HomePageUI.dart';
import 'package:quiz_app/screens/LoginUI.dart';
import 'package:quiz_app/services/EmailPasswordAuth.dart';

class SignupUI extends StatelessWidget {
  TextEditingController nameController = TextEditingController();
  TextEditingController ageController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  SignupUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(top: height * 0.1, left: width * 0.04),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('Create an Account',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 40,
                      color: Colors.pink
                  )),
              SizedBox(height: 30),
              Container(
                constraints: BoxConstraints(maxWidth: 320, minWidth: 150),
                child: TextField(
                  textInputAction: TextInputAction.next,
                  controller: nameController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50)),
                    hintText: 'Enter your Name',
                    labelText: 'Name',
                  ),
                ),
              ),
              SizedBox(height: 30),
              Container(
                constraints: BoxConstraints(maxWidth: 320, minWidth: 150),
                child: TextField(
                  textInputAction: TextInputAction.next,
                  controller: ageController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50)),
                    hintText: 'Enter your Age',
                    labelText: 'Age',
                  ),
                ),
              ),
              SizedBox(height: 30),
              Container(
                constraints: BoxConstraints(maxWidth: 320, minWidth: 150),
                child: TextField(
                  textInputAction: TextInputAction.next,
                  controller: emailController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50)),
                    hintText: 'Enter your Email',
                    labelText: 'Email',
                  ),
                ),
              ),
              SizedBox(height: 30),
              Container(
                constraints: BoxConstraints(maxWidth: 320, minWidth: 150),
                child: TextField(
                  textInputAction: TextInputAction.next,
                  obscureText: true,
                  obscuringCharacter: '*',
                  controller: passwordController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50)),
                    hintText: 'Enter your Password',
                    labelText: 'Password',
                  ),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                child: Text('Create Account', style: TextStyle(fontSize: 20)),
                onPressed: () async {
                  await EmailPasswordAuth.SignupAuth(
                      context,
                      nameController.text.trim(),
                      ageController.text.trim(),
                      emailController.text.trim(),
                      passwordController.text.trim());

                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomePageUI()));
                },
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Already have Account ?',
                      style: TextStyle(fontSize: 16)),
                  TextButton(
                    child: Text('Login',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold)),
                    onPressed: () {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) => LoginUI()));
                    },
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
