import 'package:flutter/material.dart';

class ProductCardWishList extends StatelessWidget {
  const ProductCardWishList({super.key, required this.image, required this.title, required this.price});
  final String image;
  final String title;
  final double price;
  @override
  Widget build(BuildContext context) {
    return Card(
    elevation: 4,
    margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 13),
    child: ListTile(
        leading: Image.network(image),
      title: Padding(
        padding:const  EdgeInsets.only(bottom: 4.0),
        child: Text(title),
      ),
      subtitle:  Padding(
        padding:const EdgeInsets.only(top: 12.0),
        child: Text(
          price.toString(),
          style: const TextStyle(color: Colors.deepPurple),
        ),
      ),
      trailing: const Padding(
        padding: EdgeInsets.only(top: 30),
        child: Icon(Icons.ac_unit_outlined, color: Colors.deepPurple),
      ),
    ),
  );
  }
}