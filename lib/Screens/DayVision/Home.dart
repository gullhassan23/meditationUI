import 'package:figma2/Screens/DayVision/course.dart';
import 'package:figma2/widgets/Butttons/smallButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(children: [
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
                          color: Colors.black),
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
                          color: Colors.black),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Column(
                  children: [
                    Text(
                      "Good Morning, Afsar",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 3),
                      child: Text(
                        "We wish you have a good day",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            width: 177,
                            height: 210,
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                              image: DecorationImage(
                                  image:
                                      AssetImage("assets/images/Group7.png")),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                top: 140.0,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Text(
                                    "3-10 MIN",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  SmallButton(
                                      ontap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    Course()));
                                      },
                                      CustomText: "Start",
                                      color: Colors.white)
                                ],
                              ),
                            ),
                          ),
                          Image.asset("assets/images/Group8.png")
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 13),
                      child: Image.asset("assets/images/Group19.png"),
                    ),
                    Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 13),
                          child: Text(
                            "Recomended for you",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        )),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset("assets/images/Group23.png"),
                        Image.asset("assets/images/Group25.png"),
                        Image.asset("assets/images/Group26.png"),
                      ],
                    )
                  ],
                ),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
