import 'package:flutter/material.dart';

class Tagscreen extends StatefulWidget {
  const Tagscreen({super.key});

  @override
  State<Tagscreen> createState() => _TagscreenState();
}

class _TagscreenState extends State<Tagscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Hi i am Anik",

              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
