import 'package:figma2/widgets/Features/category_card.dart';
import 'package:flutter/material.dart';
// import 'package:shoes/Widget/Categories/Addidas.dart';
// import 'package:shoes/Widget/Categories/Nike.dart';
// import 'package:shoes/Widget/Categories/Puma.dart';

// import 'package:shoes/models/products.dart';

class Category extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // final PdtsItem = Provider.of<Product>(context);
    return Container(
      height: 50,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          GestureDetector(
            onTap: () {},
            child: category_card(
              color: Color(0xff3f414e),
              name: "SU",

              // icon: icon,
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: category_card(
              color: Color(0xff3f414e),
              name: "M",

              // icon: icon,
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: category_card(
              color: Color(0xff3f414e),
              name: "TU",

              // icon: icon,
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: category_card(
              color: Color(0xff3f414e),
              name: "We",

              // icon: icon,
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: category_card(
              color: Colors.grey,
              name: "TH",

              // icon: icon,
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: category_card(
              color: Colors.grey,
              name: "F",
              // icon: icon,
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: category_card(
              color: Color(0xff3f414e),
              name: "S",
              // icon: icon,
            ),
          ),
        ],
      ),
    );
  }
}
