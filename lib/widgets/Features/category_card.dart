import 'package:flutter/material.dart';

class category_card extends StatefulWidget {
  final String name;
  final Color color;

  const category_card({
    Key? key,
    required this.name,
    required this.color,
  }) : super(key: key);

  @override
  State<category_card> createState() => _category_cardState();
}

class _category_cardState extends State<category_card> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(color: widget.color, shape: BoxShape.circle),
        width: 50,
        child: Column(
          children: [
            // image,
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Text(
                widget.name,
                style: TextStyle(fontSize: 10, color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
