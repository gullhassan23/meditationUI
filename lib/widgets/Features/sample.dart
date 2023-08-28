import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class MyHomeScreen extends StatefulWidget {
  @override
  _MyHomeScreenState createState() => _MyHomeScreenState();
}

class _MyHomeScreenState extends State<MyHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return MasonryGridView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        itemCount: 6,
        gridDelegate: const SliverSimpleGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2),
        itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.all(1.0),
            child: Image.asset(
              "assets/images/Capture" + (index + 2).toString() + ".PNG",
              // height: 140,
              // width: 140,
            )));
  }
}
