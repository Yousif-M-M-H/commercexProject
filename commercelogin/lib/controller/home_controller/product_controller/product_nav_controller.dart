import 'package:commercelogin/views/product_details/product_details.dart';
import 'package:flutter/material.dart';

class ProductSectionController {
  final BuildContext context;

  ProductSectionController(this.context);

  void navigateToProductDetailsPage() {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (context) => const ProductDetailsScreen()), 
    );
  }
}
