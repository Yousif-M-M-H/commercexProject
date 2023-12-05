import 'package:flutter/material.dart';

class SignInIntroText extends StatelessWidget {
  const SignInIntroText({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Welcome back!",
          style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold),
        ),
        const Text(
          "Login to your existing accoutn",
          style: TextStyle(fontWeight: FontWeight.bold),
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
