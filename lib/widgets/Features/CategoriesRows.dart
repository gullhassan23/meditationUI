import 'package:figma2/widgets/Features/categoryRow.dart';
import 'package:flutter/material.dart';

class Categoryy extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // final PdtsItem = Provider.of<Product>(context);
    return Container(
      height: 70,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          GestureDetector(
            onTap: () {},
            child: category_cards(image: "assets/images/all_icon.png"

                // icon: icon,
                ),
          ),
          GestureDetector(
            onTap: () {},
            child: category_cards(
              image: "assets/images/fav_icon.png",

              // icon: icon,
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: category_cards(
              image: "assets/images/anxious_icon.png",

              // icon: icon,
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: category_cards(
              image: "assets/images/moon_icon.png",

              // icon: icon,
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: category_cards(
              image: "assets/images/kid_icon.png",

              // icon: icon,
            ),
          ),
        ],
      ),
    );
  }
}
