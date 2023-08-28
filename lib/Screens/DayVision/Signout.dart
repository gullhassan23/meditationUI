import 'package:figma2/Screens/DayVision/Welcome.dart';
import 'package:figma2/widgets/Butttons/Buttonn.dart';
import 'package:figma2/widgets/Butttons/Buttons.dart';
import 'package:figma2/widgets/Butttons/ImageButton.dart';
import 'package:figma2/widgets/TextFormField.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();
  final TextEditingController name = TextEditingController();
  bool value = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/SignUPBackground.png"),
                      fit: BoxFit.fill)),
              child: Column(
                children: [
                  Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.all(28.0),
                        child: GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Image.asset("assets/images/Group67.png")),
                      )),
                  Center(
                      child: Text(
                    "Create your account",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  )),
                  Padding(
                    padding: const EdgeInsets.only(top: 30, bottom: 20),
                    child: CustomButtons(
                        CustomText: "CONTINUE WITH FACEBOOK",
                        icon: Icons.facebook,
                        color: Colors.blue),
                  ),
                  Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: CustomImageButton(
                          CustomText: "Continue with google",
                          image: "assets/images/google.png",
                          color: Colors.white))
                ],
              ),
            ),
            Padding(
                padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
                child: Text(
                  "Or login with Email",
                  style: TextStyle(fontSize: 20, color: Colors.grey),
                )),
            Padding(
                padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
                child: CustomTextField(
                    textEditingController: name,
                    hintText: "Name",
                    obscureText: false)),
            Padding(
                padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
                child: CustomTextField(
                    textEditingController: email,
                    hintText: "Email Address",
                    obscureText: false)),
            Padding(
                padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
                child: CustomTextField(
                    textEditingController: password,
                    hintText: "Password",
                    obscureText: true)),
            Padding(
              padding:
                  const EdgeInsets.only(top: 8, left: 12, right: 12, bottom: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("I have read the privacy Policy"),
                  Checkbox(
                      value: this.value,
                      onChanged: (bool? value) {
                        setState(() {
                          this.value = value!;
                        });
                      })
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustomButton(
                  ontap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Welcome()));
                  },
                  CustomText: "Get Started",
                  color: Colors.blue),
            ),
          ],
        ),
      ),
    );
  }
}
