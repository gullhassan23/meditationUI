import 'package:figma2/widgets/Features/GridWidget.dart';

import 'package:flutter/material.dart';

class SleepMusic extends StatelessWidget {
  const SleepMusic({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff03174C),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 40),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 20,
                      ),
                      child: GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Image.asset("assets/images/Group67.png")),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 110),
                      child: Center(
                        child: Text(
                          "Sleep Music",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 25),
                        ),
                      ),
                    )
                  ],
                ),
              ),
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
        ),
      ),
    );
  }
}
