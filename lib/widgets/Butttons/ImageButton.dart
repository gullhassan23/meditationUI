import 'package:flutter/material.dart';

class CustomImageButton extends StatefulWidget {
  final String CustomText;
  final String image;
  final Color color;
  const CustomImageButton({
    Key? key,
    required this.CustomText,
    required this.image,
    required this.color,
  }) : super(key: key);

  @override
  State<CustomImageButton> createState() => _CustomImageButtonState();
}

class _CustomImageButtonState extends State<CustomImageButton> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 60,
        width: 320,
        child: ElevatedButton(
          onPressed: () {},
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.asset(widget.image),
              Text(
                widget.CustomText,
                style: TextStyle(color: Colors.black),
              )
            ],
          ),
          style: ElevatedButton.styleFrom(
              backgroundColor: widget.color,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
              )),
        ));
  }
}
