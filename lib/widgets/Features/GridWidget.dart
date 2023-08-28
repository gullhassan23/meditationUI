import 'package:flutter/material.dart';

class GridWidget extends StatefulWidget {
  const GridWidget({super.key});

  @override
  State<GridWidget> createState() => _GridWidgetState();
}

class _GridWidgetState extends State<GridWidget> {
  List<String> images = [
    "assets/images/i.png",
    "assets/images/3Birds.png",
    "assets/images/3Birds.png",
    "assets/images/i.png",
    "assets/images/Moon.png",
    "assets/images/Mooon.png",
    "assets/images/i.png",
    "assets/images/3Birds.png",
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2, // number of items in each row
        mainAxisSpacing: 2.0, // spacing between rows
        crossAxisSpacing: 2.0, // spacing between columns
      ),
      padding: EdgeInsets.all(3.0), // padding around the grid
      itemCount: 8, // total number of items
      itemBuilder: (context, index) {
        return Center(
          child: Image.asset(images[index]),
        );
      },
    );
  }
}
