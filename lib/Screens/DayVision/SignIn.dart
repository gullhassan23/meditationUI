import 'package:figma2/Screens/DayVision/Signout.dart';
import 'package:figma2/widgets/Butttons/Buttonn.dart';
import 'package:figma2/widgets/Butttons/Buttons.dart';
import 'package:figma2/widgets/Butttons/ImageButton.dart';
import 'package:figma2/widgets/TextFormField.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();
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
                    "Welcome Back!",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  )),
                  Padding(
                    padding: const EdgeInsets.only(top: 30, bottom: 10),
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
                padding: const EdgeInsets.all(30),
                child: Text(
                  "Or login with Email",
                  style: TextStyle(fontSize: 20, color: Colors.grey),
                )),
            Padding(
                padding: const EdgeInsets.all(30),
                child: CustomTextField(
                    textEditingController: email,
                    hintText: "Email Address",
                    obscureText: false)),
            Padding(
                padding: const EdgeInsets.only(
                  left: 30,
                  right: 30,
                ),
                child: CustomTextField(
                    textEditingController: password,
                    hintText: "Password",
                    obscureText: true)),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustomButton(
                CustomText: " Login",
                color: Colors.blue,
                ontap: () {},
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Forgot Password?"),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
                padding: const EdgeInsets.only(top: 8, left: 94),
                child: Row(
                  children: [
                    Text("Already have an account? "),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => SignUp()));
                      },
                      child: Text(
                        "SIGN UP",
                        style: TextStyle(color: Colors.blue),
                      ),
                    )
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
