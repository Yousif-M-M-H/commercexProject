import 'package:flutter/material.dart';

class SignInTextFields extends StatelessWidget {
  const SignInTextFields({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
      const  Text("Name"),
        TextFormField(
          decoration: InputDecoration(
            labelText: "Please enter your name",
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
              borderSide: BorderSide.none,
            ),
          ),
        ),
        SizedBox(
          height: height * 0.02,
        ),
       const Text("Email"),
        TextFormField(
          decoration: InputDecoration(
            labelText: "Please enter your email",
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
              borderSide: BorderSide.none,
            ),
          ),
        ),
        SizedBox(
          height: height * 0.02,
        ),
       const Text("Password"),
        TextFormField(
          decoration: InputDecoration(
            labelText: "Please enter your password",
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
              borderSide: BorderSide.none,
            ),
          ),
        ),
      ],
    );
  }
}
