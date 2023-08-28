import 'package:figma2/widgets/TextFormField.dart';
import 'package:flutter/material.dart';

class FormS extends StatefulWidget {
  const FormS({super.key});

  @override
  State<FormS> createState() => _FormSState();
}

class _FormSState extends State<FormS> {
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
