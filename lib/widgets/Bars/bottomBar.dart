import 'package:figma2/Screens/DayVision/Home.dart';
import 'package:figma2/Screens/DayVision/Medidate.dart';
import 'package:figma2/Screens/DayVision/Music.dart';
import 'package:figma2/Screens/NightVision/WelcomeSleep.dart';

import 'package:flutter/material.dart';

class BottomW extends StatefulWidget {
  const BottomW({super.key});

  @override
  State<BottomW> createState() => _BottomWState();
}

class _BottomWState extends State<BottomW> {
  int current = 0;
  final tabs = [
    Home(),
  WelcomeSleep(),
    Medidate(),
    Music(),
    Text("Account"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        currentIndex: current,
        showUnselectedLabels: false,
        showSelectedLabels: false,
        items: [
          BottomNavigationBarItem(
            icon: Image.asset("assets/images/Group27.png"),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              "assets/images/Group30.png",
              height: 30,
              width: 50,
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              "assets/images/Group29.png",
              height: 30,
              width: 50,
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              "assets/images/Group28.png",
              height: 30,
              width: 50,
            ),
            label: "",
          ),
        ],
        onTap: (index) {
          setState(() {
            current = index;
          });
        },
      ),
      body: tabs[current],
    );
  }
}
