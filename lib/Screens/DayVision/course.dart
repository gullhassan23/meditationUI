import 'package:figma2/widgets/Features/ListVIEWTile.dart';
import 'package:flutter/material.dart';

class Course extends StatelessWidget {
  const Course({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              // width: 400,
              height: 288,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                image: DecorationImage(
                    image: AssetImage(
                      "assets/images/MaskGroup.png",
                    ),
                    fit: BoxFit.fill),
              ),
              child: Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Image.asset("assets/images/Group67.png")),
                      Row(
                        children: [
                          Image.asset("assets/images/Group46.png"),
                          Image.asset("assets/images/Group684.png")
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Happy Morning",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Course",
                    style: TextStyle(fontSize: 20, color: Colors.grey),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Ease the mind into restful night's sleep with the deep,amblent tones",
                      style: TextStyle(fontSize: 20, color: Colors.grey),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        Icons.favorite,
                        color: Colors.pink,
                      ),
                      Text("24.243 Favourite")
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.headphones,
                        color: Colors.pink,
                      ),
                      Text("24.243 Favourite")
                    ],
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Text(
                  "Pick a narrator",
                  style: TextStyle(
                    fontSize: 27,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "MALE VOICE",
                    style: TextStyle(color: Colors.grey, fontSize: 20),
                  ),
                  Text(
                    "FEMALE VOICE",
                    style: TextStyle(color: Colors.grey, fontSize: 20),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListViewTile(
                  BigTitle: "Focus Attention",
                  iconData: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.play_circle_fill_rounded)),
                  small: "10MINS"),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListViewTile(
                BigTitle: "Focus Attention",
                iconData: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.play_circle_fill_rounded)),
                small: "10MINS",
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListViewTile(
                  BigTitle: "Focus Attention",
                  iconData: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.play_circle_fill_rounded)),
                  small: "10MINS"),
            )
          ],
        ),
      ),
    ));
  }
}
