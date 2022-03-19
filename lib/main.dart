import 'package:flutter/material.dart';

import 'pages/add.dart';
import 'pages/cart.dart';
import 'pages/chat.dart';
import 'pages/home_screen.dart';
import 'pages/profile.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int currentIndex = 0;
  final pages = [
    HomeScreen(),
    Cart(),
    Add(),
    Chat(),
    Profile(),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          enableFeedback: false,
          currentIndex: currentIndex,
          onTap: (index) {
            setState(() {
              currentIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              label: "Home",
              icon: Icon(
                Icons.home_filled,
                color: Color(0xFF5364F4),
                size: 30,
              ),
            ),
            BottomNavigationBarItem(
                label: "Cart",
                icon: Icon(
                  Icons.shop_2_outlined,
                  color: Color(0xFF5364F4),
                  size: 30,
                )),
            BottomNavigationBarItem(
                label: "Add",
                icon: Icon(
                  Icons.add_outlined,
                  color: Color(0xFF5364F4),
                  size: 30,
                )),
            BottomNavigationBarItem(
                label: "Chat",
                icon: Icon(
                  Icons.message_outlined,
                  color: Color(0xFF5364F4),
                  size: 30,
                )),
            BottomNavigationBarItem(
                label: "Profile",
                icon: Icon(
                  Icons.person_outline,
                  color: Color(0xFF5364F4),
                  size: 30,
                )),
          ],
        ),
        body: pages[currentIndex],
      ),
    );
  }
}
