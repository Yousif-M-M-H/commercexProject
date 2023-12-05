import 'dart:async';
import 'package:commercelogin/views/signup/sign_up_screen.dart';
import 'package:flutter/material.dart';

class SplashController {
  final BuildContext context;

  SplashController(this.context);

  void initialize() {
    Timer(const Duration(seconds: 5), () {
      navigateToNextScreen();
    });
  }

  void navigateToNextScreen() {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (context) => const SignUpScreen()), 
    );
  }
}
