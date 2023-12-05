import 'package:commercelogin/views/home/home_screen.dart';
import 'package:flutter/material.dart';

class SignInController {
  final BuildContext context;

  SignInController(this.context);

  void navigateToNextScreen() {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (context) => const MyHomePage()),
    );
  }
}
