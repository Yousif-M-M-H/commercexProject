import 'package:commercelogin/controller/home_controller/product_controller/product_nav_controller.dart';
import 'package:flutter/material.dart';

class FeaturedProductCard extends StatelessWidget {
  const FeaturedProductCard(
      {super.key,
      required this.image,
      required this.title,
      required this.price});
  final String image;
  final String title;
  final double price;

  @override
  Widget build(BuildContext context) {
      ProductSectionController productSectionController =
        ProductSectionController(context);
    return Column(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20.0),
                  child: GestureDetector(
                    onTap: (){
                      productSectionController.navigateToProductDetailsPage();
                    },
                    child: Image.asset(
                      image,
                      width: 120,
                      height: 140,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  right: 0,
                  bottom: 0,
                  child: ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(12),
                      topRight: Radius.circular(12),
                      bottomLeft: Radius.circular(12),
                      bottomRight: Radius.circular(20),
                    ),
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          color: Colors.black.withOpacity(0.1),
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: const Icon(
                        Icons.favorite_outline_outlined,
                        color: Colors.purple,
                        size: 19,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              title,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            Text(
              "\$${price.toString()}",
              style: const TextStyle(
                  color: Colors.purple,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ],
    );
  }
}
