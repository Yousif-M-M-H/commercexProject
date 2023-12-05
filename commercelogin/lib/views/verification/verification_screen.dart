import 'package:commercelogin/views/signin/components/sign_in_button.dart';
import 'package:commercelogin/views/signup/components/rich_text.dart';
import 'package:commercelogin/views/verification/components/pin_code_widget.dart';
import 'package:flutter/material.dart';

class VerificationScreen extends StatelessWidget {
  const VerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
              child: Padding(
                padding:  EdgeInsets.symmetric(horizontal: 20 , vertical: 40),
                child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                Text(
                  "Verification",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
                SizedBox(height: 15,),
                 Text(
                  "Please enter the OTP code sent to you\n by SMS",
                  style:
                      TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 50,),
                 PinCodeRow(),
                 RichWidget(
                  leftText: "Didn't get a code? ",
                  rightText: "Send again",
                )
                          ],
                        ),
              )),
           Padding(
            padding: EdgeInsets.only(bottom: 20, left: 20, right: 20),
            child: SignInButton(),
          )
        ],
      )),
    );
  }
}
