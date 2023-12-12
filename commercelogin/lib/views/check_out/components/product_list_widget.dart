import 'package:flutter/material.dart';

class ProductListViewWidget extends StatelessWidget {
  const ProductListViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
                  alignment: Alignment.centerLeft,
                  height: 170,
                  width: 170,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.network(
                      "https://th.bing.com/th/id/R.321bc34b9a45008036611714a63c413d?rik=SUuqKn8SZPNJAQ&pid=ImgRaw&r=0",
                      fit: BoxFit.cover,
                    ),
                  ),
                );
  }
}