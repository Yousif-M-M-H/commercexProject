import 'package:flutter/material.dart';

class TextFieldsSectionSignIn extends StatelessWidget {
  const TextFieldsSectionSignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
         const  Text("Email Address"),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: "e.g name@example.com",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                const  Text("Password"),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: "e.g *******************",
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