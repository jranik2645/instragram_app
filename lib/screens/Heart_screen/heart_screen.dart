import 'package:flutter/material.dart';
import 'package:instagram/screens/Heart_screen/Following/following.dart';
import 'package:instagram/screens/Heart_screen/You/you.dart';

class HeartScreen extends StatefulWidget {
  const HeartScreen({super.key});

  @override
  State<HeartScreen> createState() => _HeartScreenState();
}

class _HeartScreenState extends State<HeartScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 2,
    child: Scaffold(
        appBar: AppBar(
           bottom: TabBar(tabs:[
              Tab(text: 'Following',),
             Tab(text: 'You',),
           ] ),
        ),
        body: TabBarView(children: [
            Following(),
            YouScreen(),

        ]),
    ),
      
    );
  }
}
