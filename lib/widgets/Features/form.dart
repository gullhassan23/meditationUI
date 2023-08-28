import 'package:figma2/widgets/TextFormField.dart';
import 'package:flutter/material.dart';

class formT extends StatefulWidget {
  const formT({super.key});

  @override
  State<formT> createState() => _formState();
}

class _formState extends State<formT> {
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Form(
        child: Column(
      children: [
        CustomTextField(
          obscureText: false,
          textEditingController: email,
          hintText: "Enter your Email",
        ),
        CustomTextField(
          obscureText: false,
          textEditingController: password,
          hintText: "Enter your Pasword",
        ),
        
      ],
    ));
  }
}
