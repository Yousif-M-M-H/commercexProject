import 'package:flutter/material.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Payment",
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18),
        ),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Padding(
            padding: EdgeInsets.only(bottom: 25),
            child: Center(
              child: CircleAvatar(
                radius: 40,
                backgroundColor: Colors.deepPurpleAccent,
                child: Center(
                  child: Icon(
                    Icons.check,
                    color: Colors.white,
                    size: 50,
                  ),
                ),
              ),
            ),
          ),
          const Text(
            "Payment Successful!",
            style: TextStyle(
              color: Colors.black,
              fontSize: 25,
            ),
          ),
          const SizedBox(height: 10),
          const Text(
            "Your order will be processed and sent to",
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
          ),
          const Center(
            child: Text(
              "you as soon as possible",
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: MaterialButton(
                color: Colors.deepPurpleAccent,
                minWidth: double.infinity,
                onPressed: () {},
                child: const Padding(
                  padding: EdgeInsets.symmetric(vertical: 15),
                  child: Text(
                    "Continue Shopping",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 18),
                  ),
                )),
          )
        ],
      ),
    );
  }
}
