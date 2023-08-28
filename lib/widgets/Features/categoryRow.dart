import 'package:flutter/material.dart';

class category_cards extends StatefulWidget {
  final String image;
  const category_cards({
    Key? key,
    required this.image,
  }) : super(key: key);

  @override
  State<category_cards> createState() => _category_cardsState();
}

class _category_cardsState extends State<category_cards> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.blue,
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(10),
        ),
        width: 70,
        child: Column(
          children: [
            // image,
            Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Image.asset(
                  widget.image,
                  fit: BoxFit.cover,
                ))
          ],
        ),
      ),
    );
  }
}
