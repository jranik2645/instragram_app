import 'package:flutter/material.dart';
import 'package:instagram/screens/Home/home_screen.dart';
import 'package:instagram/screens/login/login_screen.dart';
import 'package:instagram/widget/uihelper.dart' show UiHelper;

import '../Bottom_Nav/bottom_nav.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();
  TextEditingController usernameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            UiHelper.CustomImage(imgurl: 'Instagram Logo (1).png'),
            SizedBox(height: 30),

            UiHelper.CustomTextField(
              controller: emailController,
              text: 'Email',
              anik: true,
              textinputtype: TextInputType.emailAddress,
            ),
            SizedBox(height: 10),
            UiHelper.CustomTextField(
              controller: passController,
              text: 'Password',
              anik: true,
              textinputtype: TextInputType.text,
            ),
            SizedBox(height: 10),
            UiHelper.CustomTextField(
              controller: usernameController,
              text: 'UserName',
              anik: true,
              textinputtype: TextInputType.name,
            ),
            SizedBox(height: 20),
            UiHelper.CustomButton(callback: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => BottomNav()),
              );
            }, buttonName: 'Sign In'),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Already have an account? ",
                  style: TextStyle(fontSize: 14, color: Colors.white),
                ),

                UiHelper.CustomTextButton(
                  callback: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => LoginScreen()),
                    );
                  },
                  tex: "Log In",
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
