import 'package:figma2/widgets/Butttons/CustomButtonNight.dart';
import 'package:figma2/widgets/Bars/bottomNight.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WelcomeSleep extends StatelessWidget {
  const WelcomeSleep({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff03174C),
        body: Center(
          child: SingleChildScrollView(
            child: Stack(children: [
              SvgPicture.asset(
                "assets/images/bg_wave.svg",
                fit: BoxFit.cover,
                alignment: AlignmentDirectional.topStart,
              ),
              Center(
                child: Stack(children: [
                  SvgPicture.asset(
                    "assets/images/bg_clouds.svg",
                    fit: BoxFit.fitWidth,
                  ),
                  Center(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 180,
                        ),
                        Text(
                          "Welcome to Sleep",
                          style: TextStyle(
                              fontSize: 30,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 24.0),
                          child: Column(
                            children: [
                              Text(
                                "Explore the new king to sleep. It uses sound ",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                " and visualization to create perfect conditions ",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                " for refreshing sleep ",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 19),
                          child: Image.asset("assets/images/Frame.png"),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 86),
                          child: CustomButtonNight(
                            ontap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => BottomWi()));
                            },
                            CustomText: "GET STARTED",
                            color: Colors.blue,
                          ),
                        ),
                      ],
                    ),
                  )
                ]),
              )
            ]),
          ),
        ),
      ),
    );
  }
}
