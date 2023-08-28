import 'package:flutter/material.dart';

class MusicPlayer extends StatelessWidget {
  const MusicPlayer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff03174c),
      body: Stack(children: [
        Image.asset("assets/images/BigVector.png",
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            alignment: AlignmentDirectional.topEnd),
        Image.asset("assets/images/smallVector.png",
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            alignment: AlignmentDirectional.centerStart),
        Image.asset("assets/images/smallVector2.png",
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            alignment: AlignmentDirectional.centerEnd),
        SafeArea(
            child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Image.asset("assets/images/cross.png")),
                  Row(
                    children: [
                      Image.asset("assets/images/Group46.png"),
                      SizedBox(
                        width: 10,
                      ),
                      Image.asset("assets/images/Group684.png"),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 150),
            Center(
              child: Text(
                "Night Island",
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Center(
              child: Text(
                "sleep Music",
                style: TextStyle(fontSize: 15, color: Colors.grey),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Image.asset("assets/images/sound.png")
          ],
        ))
      ]),
    );
  }
}
