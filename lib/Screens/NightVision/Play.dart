import 'package:figma2/widgets/Butttons/CustomButtonNight.dart';
import 'package:flutter/material.dart';

class NightIsland extends StatelessWidget {
  const NightIsland({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Color(0xff03174C),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              // width: 400,
              height: 288,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                image: DecorationImage(
                    image: AssetImage(
                      "assets/images/nightFrame.png",
                    ),
                    fit: BoxFit.fill),
              ),
              child: Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
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
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Night Island",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "45MIN . SLEEP MUSIC",
                          style: TextStyle(color: Color(0xff98A1BD)),
                        )),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Ease the mind into restful night's sleep with",
                        style:
                            TextStyle(fontSize: 20, color: Color(0xff98A1BD)),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "the deep, amblent tones",
                      style: TextStyle(fontSize: 20, color: Color(0xff98A1BD)),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.favorite,
                      color: Colors.white,
                    ),
                    Text(
                      "24.243 Favourite",
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Icons.headphones,
                      color: Colors.white,
                    ),
                    Text(
                      "24.243 Favourite",
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Divider(thickness: 1, color: Color(0xff98A1BD)),
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  "Related",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Image.asset("assets/images/Moon.png"),
                    Padding(
                      padding: const EdgeInsets.only(top: 4, right: 55),
                      child: Text(
                        "Moon clouds",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(right: 55, top: 10, bottom: 10),
                      child: Text(
                        "45 MIN . SLEEP MUSIC",
                        style: TextStyle(
                            fontSize: 10,
                            color: Color(0xff98A1BD),
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                Image.asset("assets/images/3Birds.png")
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40, bottom: 30),
              child: CustomButtonNight(
                CustomText: "PLAY",
                color: Colors.blue,
                ontap: () {},
              ),
            )
          ],
        ),
      ),
    ));
  }
}
