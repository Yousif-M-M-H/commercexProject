import 'package:flutter/material.dart';

class ShippingModeContainer extends StatelessWidget {
  const ShippingModeContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Flat Rate",
          style: TextStyle(
              color: Colors.grey, fontWeight: FontWeight.bold, fontSize: 15),
        ),
        Text(
          "\$20.0",
          style: TextStyle(
              color: Colors.grey, fontWeight: FontWeight.bold, fontSize: 15),
        )
      ],
    );
  }
}
