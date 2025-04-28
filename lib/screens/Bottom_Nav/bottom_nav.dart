import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram/screens/Heart_screen/heart_screen.dart';
import 'package:instagram/screens/Home/home_screen.dart';
import 'package:instagram/screens/Post_Screen/post_screen.dart';
import 'package:instagram/screens/search/search_screen.dart';

import 'Profile_Screen/profile_screen.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {

    int currentIndex=0;
    List<Widget> pages=[
       HomeScreen(),
       SearchScreen(),
       PostScreen(),
       HeartScreen(),
       ProfileScreen()
    ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: currentIndex,
          selectedItemColor: Colors.white,
          selectedLabelStyle: TextStyle(color: Colors.white),
          unselectedLabelStyle: TextStyle(color: Colors.grey),
          unselectedItemColor: Colors.grey,
          backgroundColor: Colors.black,
          onTap: (index){
            setState(() {
              currentIndex=index;
            });
          },
         items: [
           BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
           BottomNavigationBarItem(icon: Icon(Icons.search_rounded),label: "Search"),
           BottomNavigationBarItem(icon: Icon(CupertinoIcons.plus),label: "Home"),
           BottomNavigationBarItem(icon: Icon(CupertinoIcons.heart),label: "Heart"),
           BottomNavigationBarItem(icon: Icon(Icons.person),label: "Home"),
         ],
       ),

        body: IndexedStack(
          index: currentIndex,
          children: pages,
        ),
    );
  }
}
