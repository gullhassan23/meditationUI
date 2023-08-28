import 'package:flutter/material.dart';

class SmallButton extends StatefulWidget {
  final String CustomText;
  final VoidCallback ontap;
  final Color color;
  const SmallButton({
    Key? key,
    required this.CustomText,
    required this.color,
    required this.ontap,
  }) : super(key: key);

  @override
  State<SmallButton> createState() => _SmallButtonState();
}

class _SmallButtonState extends State<SmallButton> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 30,
        width: 90,
        child: ElevatedButton(
          onPressed: widget.ontap,
          child: Text(
            widget.CustomText,
            style: TextStyle(color: Colors.black),
          ),
          style: ElevatedButton.styleFrom(
              backgroundColor: widget.color,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
              )),
        ));
  }
}
