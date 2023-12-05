import 'package:flutter/material.dart';

class ForgotPasswordRow extends StatelessWidget {
  const ForgotPasswordRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Checkbox(
                        value: true,
                        onChanged: (value) {
                          value != value;
                        },
                      ),
                      const Text("Remember me"),
                    ],
                  ),
                  const Text("Forgot Password"),
                ],
              );
  }
}