import 'package:commercelogin/views/product_details/components/colored_container.dart';
import 'package:flutter/material.dart';

class ProductInformationSection extends StatelessWidget {
  const ProductInformationSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Macbook Air",
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 13),
        Text(
          "Description",
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 6),
        Text(
          "Up is opinion message mannersmity. Easy mr pain felt in. Too northward affection additions nay. He no an nature ye talent houses wisdom vanity denied.",
          style: TextStyle(
              color: Color.fromARGB(255, 214, 208, 208),
              fontSize: 16,
              fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10),
        Text(
          "Color",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10),
        Row(
          children: [
            Stack(
              children: [
                ColoredConrainer(color: Colors.red),
                Positioned.fill(
                  child: Center(
                    child: Icon(
                      Icons.check,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(width: 10),
            ColoredConrainer(color: Colors.black),
            SizedBox(width: 10),
            ColoredConrainer(color: Colors.lightBlue),
          ],
        ),
        SizedBox(height: 10),
        Text(
          "Size",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
