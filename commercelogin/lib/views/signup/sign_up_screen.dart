import 'package:commercelogin/views/signup/components/forgot_passowrd.dart';
import 'package:commercelogin/views/signup/components/rich_text.dart';
import 'package:commercelogin/views/signup/components/sign_in_button.dart';
import 'package:commercelogin/views/signup/components/sign_in_intro.dart';
import 'package:commercelogin/views/signup/components/text_fields.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
            child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SignInFirstText(),
              const SignInTextFields(),
              const ForgotPasswordRow(),
              SizedBox(
                height: height * .04,
              ),
              const SignUpButton(),
              const RichWidget(
                leftText: "Already have an account? ",
                rightText: "Sign in",
              )
            ],
          ),
        )),
      ),
    );
  }
}
