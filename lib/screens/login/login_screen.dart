import 'package:flutter/material.dart';
import 'package:instagram/screens/Home/home_screen.dart';
import 'package:instagram/screens/SignUp/sign_up_Screen.dart';

import '../../widget/uihelper.dart';
import '../Bottom_Nav/bottom_nav.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            UiHelper.CustomImage(imgurl: 'Instagram Logo (1).png'),

            SizedBox(height: 20),
            UiHelper.CustomTextField(
              controller: emailController,
              text: "Email",

              anik: true,
              textinputtype: TextInputType.emailAddress,
            ),
            SizedBox(height: 20),
            UiHelper.CustomTextField(
              controller: passController,
              text: "Password",
              anik: true,
              textinputtype: TextInputType.visiblePassword,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 20),
                  child: UiHelper.CustomTextButton(
                    callback: () {},
                    tex: 'Forget Password',
                  ),
                ),
              ],
            ),

            UiHelper.CustomButton(callback: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => BottomNav()),
              );
            }, buttonName: 'Login'),
            SizedBox(height: 10),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                UiHelper.CustomImage(imgurl: 'Icon.png'),

                UiHelper.CustomTextButton(
                  callback: () {},
                  tex: "Login with Facebook",
                ),
              ],
            ),
            SizedBox(height: 15),

            Center(
              child: Text(
                'OR',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have an account?",
                  style: TextStyle(fontSize: 14, color: Colors.white),
                ),
                UiHelper.CustomTextButton(callback: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => SignUpScreen()),
                  );
                }, tex: "Sign Up"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
