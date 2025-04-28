import 'dart:async';

import 'package:flutter/material.dart';
import 'package:instagram/screens/login/login_screen.dart';
import 'package:instagram/widget/uihelper.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => LoginScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFF000000),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            UiHelper.CustomImage(imgurl: 'instagram.png'),
            SizedBox(height: 20),
            UiHelper.CustomImage(imgurl: 'Instagram Logo (1).png'),
          ],
        ),
      ),
    );
  }
}
