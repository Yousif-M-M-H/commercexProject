
import 'package:flutter/material.dart';

class MyCategory extends StatelessWidget {
  const MyCategory({Key? key, required this.text, required this.image})
      : super(key: key);

  final String text;
  final String image;

  @override
  Widget build(BuildContext context) {


    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20.0),
          child: Image.asset(
            image,
            width: 300,
            height: 150,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          top: 10,
          left: 10,
          child: Text(
            text, 
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w600,
              fontSize: 18,
            ),
          ),
        ),
      ],
    );
  }
}
