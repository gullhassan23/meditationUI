import 'package:flutter/material.dart';

class CustomButtons extends StatefulWidget {
  final String CustomText;
  final IconData icon;
  final Color color;
  const CustomButtons({
    Key? key,
    required this.CustomText,
    required this.icon,
     required this.color,
  }) : super(key: key);

  @override
  State<CustomButtons> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButtons> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 60,
        width: 320,
        child: ElevatedButton(
          onPressed: () {},
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [Icon(widget.icon), Text(widget.CustomText)],
          ),
          style: ElevatedButton.styleFrom(
            backgroundColor: widget.color,
              shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          )),
        ));
  }
}
