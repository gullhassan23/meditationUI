import 'package:figma2/Screens/NightVision/HomeNight.dart';

import 'package:figma2/Screens/NightVision/MusicSleep.dart';
import 'package:figma2/Screens/NightVision/Play.dart';
import 'package:figma2/Screens/NightVision/SleepMusic.dart';
import 'package:flutter/material.dart';

class BottomWi extends StatefulWidget {
  const BottomWi({super.key});

  @override
  State<BottomWi> createState() => _BottomWiState();
}

class _BottomWiState extends State<BottomWi> {
  int current = 0;
  final tabs = [
    HomeNight(),
    SleepMusic(),
    NightIsland(),
    MusicPlayer(),
    Text("Account"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xff03174C),
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
