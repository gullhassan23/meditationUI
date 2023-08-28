import 'package:flutter/material.dart';

class Music extends StatelessWidget {
  const Music({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/background_music.png"),
                      fit: BoxFit.fill)),
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
                            Image.asset("assets/images/fav.png"),
                            Image.asset("assets/images/down.png")
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 120,
                  ),
                  Center(
                    child: Column(
                      children: [
                        Text(
                          "Focus Attention",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "7 days of calm",
                            style: TextStyle(fontSize: 25, color: Colors.grey),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 60,
                  ),
                  Image.asset("assets/images/player.png")
                ],
              ))),
    );
  }
}
