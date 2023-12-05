import 'package:commercelogin/views/signin/components/rich_text.dart';
import 'package:commercelogin/views/signin/components/sign_in_button.dart';
import 'package:commercelogin/views/signin/components/sign_in_intro.dart';
import 'package:commercelogin/views/signin/components/text_fields_sigin.dart';
import 'package:commercelogin/views/signup/components/forgot_passowrd.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
            child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SignInIntroText(),
              const TextFieldsSectionSignIn(),
              const ForgotPasswordRow(),
              SizedBox(height: height * .04),
              const SignInButton(),
              SizedBox(height: height * .05),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    'assets/images/facebook-svgrepo-com.svg',
                    height: 50,
                    width: 50,
                  ),
                  SizedBox(
                    width: width * .07,
                  ),
                  SvgPicture.asset(
                    'assets/images/google-svgrepo-com.svg',
                    height: 50,
                    width: 50,
                  ),
                ],
              ),
              const RichWidgetSignIn(
                leftText: "Don't have an account? ",
                rightText: "Sign Up",
              )
            ],
          ),
        )),
      ),
    );
  }
}
