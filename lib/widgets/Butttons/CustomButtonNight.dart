import 'package:flutter/material.dart';

class CustomButtonNight extends StatefulWidget {
  final String CustomText;
  final Color color;
  final VoidCallback ontap;
  const CustomButtonNight({
    Key? key,
    required this.CustomText,
      required this.ontap,
    required this.color,
  }) : super(key: key);

  @override
  State<CustomButtonNight> createState() => _CustomButtonNightState();
}

class _CustomButtonNightState extends State<CustomButtonNight> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 60,
        width: 320,
        child: ElevatedButton(
          onPressed: widget.ontap,
          child: Text(
            widget.CustomText,
            style: TextStyle(color: Colors.white),
          ),
          style: ElevatedButton.styleFrom(
              backgroundColor: widget.color,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
              )),
        ));
  }
}
