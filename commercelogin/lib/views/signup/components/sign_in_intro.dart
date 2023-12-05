import 'package:flutter/material.dart';

class SignInFirstText extends StatelessWidget {
  const SignInFirstText({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
     const   Text(
          "Sign up",
          style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: height * 0.02,
        ),
     const   Text(
          "Please enter your information below to sign up",
          style: TextStyle(
              // fontSize: 27,
              fontWeight: FontWeight.bold),
        ),
        Container(
          padding: const EdgeInsets.symmetric(vertical: 20),
          alignment: Alignment.center,
          child: Image.network(
            "https://th.bing.com/th/id/R.45d155a27e298f98e275ea0b2a31350d?rik=CdabfVAPKp3GCQ&pid=ImgRaw&r=0",
            width: height * .12,
            height: 120,
          ),
        ),
      ],
    );
  }
}
