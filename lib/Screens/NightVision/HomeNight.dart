import 'package:figma2/widgets/Features/CategoriesRows.dart';
import 'package:figma2/widgets/Features/GridWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeNight extends StatelessWidget {
  const HomeNight({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff03174c),
      body: SingleChildScrollView(
        child: Stack(children: [
          SvgPicture.asset(
            "assets/images/bg_home_border.svg",
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            alignment: AlignmentDirectional.topStart,
          ),
          SvgPicture.asset(
            "assets/images/bg_moon_home.svg",
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            alignment: AlignmentDirectional.topStart,
          ),
          SafeArea(
              child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                Text(
                  "Sleep Stories",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  "Soothing bedtime stories to help you fall \n into deep and natural sleep",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 40,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 18),
                  child: Center(child: Categoryy()),
                ),
                SizedBox(
                  height: 20,
                ),
                Image.asset("assets/images/cover.png"),
                Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: Container(
                      height: MediaQuery.of(context).size.height,
                      width: MediaQuery.of(context).size.width,
                      alignment: Alignment.center,
                      child: GridWidget()),
                ),
              ],
            ),
          ))
        ]),
      ),
    );
  }
}
