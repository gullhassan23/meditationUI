import 'package:figma2/widgets/sTageredGrid.dart';
import 'package:flutter/material.dart';

class Medidate extends StatelessWidget {
  const Medidate({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 40),
              child: Center(
                child: Text(
                  "Medidate",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(28.0),
                child: Text(
                  "We Can learn how to recognize when our minds are doing their normal everyday acrobatics",
                  style: TextStyle(color: Colors.grey, fontSize: 15),
                ),
              ),
            ),
            Center(
                child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset("assets/images/Group1999.png"),
            )),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset("assets/images/Group1900.png"),
              ),
            ),
            StageredWidget(),
          ],
        ),
      )),
    );
  }
}
