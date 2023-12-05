import 'package:flutter/material.dart';

class PriceRowSection extends StatelessWidget {
  const PriceRowSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            const Text(
              "\$2452.75 ",
              style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.purple),
            ),
            const Text(
              " \$32.5 ",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 15,
                decoration: TextDecoration.lineThrough,
              ),
            ),
            const SizedBox(width: 9),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.red),
                borderRadius: BorderRadius.circular(4.0),
              ),
              child: const Text(
                " -32 Off ",
                style: TextStyle(color: Colors.red),
              ),
            ),
          ],
        ),
        const Icon(
          Icons.favorite,
          color: Colors.red,
        )
      ],
    );
  }
}
