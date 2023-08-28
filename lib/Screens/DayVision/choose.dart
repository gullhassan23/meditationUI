import 'package:figma2/Screens/DayVision/Reminders.dart';
import 'package:figma2/widgets/Butttons/Buttons.dart';
import 'package:figma2/widgets/Bars/bottomBar.dart';
import 'package:figma2/widgets/Features/sample.dart';
import 'package:flutter/material.dart';

class choose extends StatefulWidget {
  const choose({super.key});

  @override
  State<choose> createState() => _chooseState();
}

class _chooseState extends State<choose> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 28),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Text(
                      "What Brings you",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "to Silent Moon?",
                      style: TextStyle(
                        fontSize: 30,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                      "assets/images/Union.png",
                    ),
                    fit: BoxFit.fill),
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20, top: 60),
                      child: Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "choose a topic to focus on:",
                            style: TextStyle(fontSize: 20, color: Colors.grey),
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 1),
                      child: MyHomeScreen(),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 1),
                      child: CustomButton(
                          CustomText: "Next",
                          color: Colors.blue,
                          ontap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => BottomW()));
                          }),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 3),
                      child: CustomButton(
                          CustomText: "Reminder",
                          color: Colors.blue,
                          ontap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Reminder()));
                          }),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
