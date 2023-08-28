import 'package:figma2/Screens/DayVision/SignIn.dart';
import 'package:figma2/Screens/DayVision/Signout.dart';
import 'package:figma2/widgets/Butttons/Buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Start extends StatelessWidget {
  const Start({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffFAF8F5),
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    top: 30,
                    left: 120.0,
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 9.0),
                        child: Text(
                          "Silent",
                          style: TextStyle(
                              fontSize: 23, fontWeight: FontWeight.bold),
                        ),
                      ),
                      SvgPicture.asset("assets/images/logo.svg"),
                      Padding(
                        padding: const EdgeInsets.only(left: 9.0),
                        child: Text(
                          "Moon",
                          style: TextStyle(
                              fontSize: 23, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
                Image.asset("assets/images/image.JPG"),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "We are what we do",
                    style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 6,
                ),
                Column(
                  children: [
                    Text(
                      "Thousand of people are using silent moon ",
                      style: TextStyle(color: Colors.grey, fontSize: 15),
                    ),
                    Text(
                      " for smalls meditation",
                      style: TextStyle(color: Colors.grey, fontSize: 15),
                    )
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                CustomButton(
                  CustomText: "SIGN UP",
                  color: Colors.blue,
                  ontap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SignUp()));
                  },
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 4),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 13, left: 90),
                    child: Row(
                      children: [
                        Text('Already Have an Account?'),
                        GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => SignIn()));
                            },
                            child: Text(
                              " LOG IN",
                              style: TextStyle(color: Colors.blue),
                            ))
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
