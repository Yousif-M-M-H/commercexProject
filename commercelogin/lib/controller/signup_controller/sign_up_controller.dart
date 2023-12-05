import 'package:commercelogin/views/signin/sign_in_screen.dart';
import 'package:flutter/material.dart';

class SignUpController {
  final BuildContext context;

  SignUpController(this.context);

  void navigateToNextScreen() {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (context) => const SignInScreen()),
    );
  }
}
