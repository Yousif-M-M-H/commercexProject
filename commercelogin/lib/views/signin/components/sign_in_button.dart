import 'package:commercelogin/controller/sign_in_controller/sign_in_controller.dart';
import 'package:flutter/material.dart';

class SignInButton extends StatelessWidget {
  const SignInButton({super.key});

  @override
  Widget build(BuildContext context) {
    SignInController signInController = SignInController(context);

    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5.0),
        child: SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () {
              signInController.navigateToNextScreen();
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
              "Login",
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
