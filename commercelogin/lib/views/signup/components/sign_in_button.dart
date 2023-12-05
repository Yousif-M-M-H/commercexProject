import 'package:commercelogin/controller/signup_controller/sign_up_controller.dart';
import 'package:flutter/material.dart';

class SignUpButton extends StatelessWidget {
  const SignUpButton({super.key});

  @override
  Widget build(BuildContext context) {
    SignUpController signUpController = SignUpController(context);

    return Center(
      child: Padding(
        padding:const  EdgeInsets.symmetric(horizontal: 5.0),
        child: SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () {
              signUpController.navigateToNextScreen();
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.deepPurple, 
              shape: RoundedRectangleBorder(
                borderRadius:
                    BorderRadius.circular(8.0), 
              ),
              padding: const EdgeInsets.symmetric(vertical: 16.0), 
            ),
            child: const Text(
              "Sign Up",
              style: TextStyle(
                color: Colors.white,
                fontSize: 18.0, 
              ),
            ),
          ),
        ),
      ),
    );
  }
}
