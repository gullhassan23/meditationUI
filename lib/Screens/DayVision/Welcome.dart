import 'package:figma2/Screens/DayVision/choose.dart';
import 'package:figma2/widgets/Butttons/Buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff8E97FD),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: 50,
                left: 130.0,
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 9.0),
                    child: Text(
                      "Silent",
                      style: TextStyle(
                          fontSize: 23,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                  SvgPicture.asset("assets/images/logo.svg"),
                  Padding(
                    padding: const EdgeInsets.only(left: 9.0),
                    child: Text(
                      "Moon",
                      style: TextStyle(
                          fontSize: 23,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 50, left: 10),
              child: Column(
                children: [
                  Text(
                    "Hi Afsar, Welcome",
                    style: TextStyle(fontSize: 30, color: Colors.white),
                  ),
                  Text(
                    "to Silent Moon",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    "Explore the App,Find some peace of mind to",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    "prepare for meditation",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 18.0),
              child: Image.asset(
                "assets/images/welcome.PNG",
                width: 440,
                height: 258,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 80),
              child: CustomButton(
                CustomText: "GET STARTED",
                ontap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => choose()));
                },
                color: Colors.blue,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
