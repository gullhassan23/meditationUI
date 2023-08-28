import 'package:figma2/widgets/Butttons/Buttons.dart';
import 'package:figma2/widgets/Features/CategoriesDays.dart';
import 'package:figma2/widgets/Bars/bottomBar.dart';
import 'package:flutter/material.dart';

class Reminder extends StatelessWidget {
  const Reminder({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "What time would you  like to medidate",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Any time you can choose but We recommend first thing in the morning",
                    style: TextStyle(fontSize: 10, color: Colors.grey),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Image.asset(
                  "assets/images/reminder.png",
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Which day would you like to medidate",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Everyday is best, but we recommend picking at least five",
                    style: TextStyle(fontSize: 10, color: Colors.grey),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Category(),
            ),
            SizedBox(
              height: 30,
            ),
            CustomButton(
                CustomText: "Save",
                color: Colors.blue,
                ontap: () {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text("Reminder set successfully!"),
                    duration: Duration(milliseconds: 1500),
                  ));

                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => BottomW()));
                }),
            SizedBox(
              height: 20,
            ),
            Center(
                child: GestureDetector(
              onTap: () {},
              child: Text(
                "No Thanks",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
              ),
            )),
            SizedBox(height: 30)
          ],
        ),
      ),
    );
  }
}
