import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class StageredWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MasonryGridView.builder(
        shrinkWrap: true,
        itemCount: 4,
        gridDelegate: const SliverSimpleGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2),
        itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.all(2.0),
              child: Image.asset(
                  "assets/images/s" + (index + 1).toString() + ".png"),
            ));
  }
}
