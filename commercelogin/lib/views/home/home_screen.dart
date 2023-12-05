import 'package:commercelogin/controller/home_controller/category_controller.dart';
import 'package:commercelogin/controller/home_controller/product_controller/product_controller.dart';
import 'package:commercelogin/models/home_models/category_model.dart';
import 'package:commercelogin/models/home_models/product_model.dart';
import 'package:commercelogin/views/home/components/app_bar_icon.dart';
import 'package:commercelogin/views/home/components/app_bar_textfield.dart';
import 'package:commercelogin/views/home/components/category_section.dart';
import 'package:commercelogin/views/home/components/featured_product.dart';
import 'package:commercelogin/views/home/components/section_tile.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final CategoryController _categoryController = CategoryController();
  final ProductController _productController = ProductController();

  @override
  Widget build(BuildContext context) {
    List<CategoryModel> categories = _categoryController.getCategoryList();
    List<ProductModel> products = _productController.getProductList();
    return Scaffold(
      appBar: AppBar(
        title: const MyAppBarTextField(),
        actions: const [
          MyAppBarIcon(icon: Icons.shopping_cart_outlined),
          MyAppBarIcon(icon: Icons.notifications_active_outlined)
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SectionTitle(title: 'Special for you'),
              const SizedBox(height: 20),
              SizedBox(
                height: 150,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: categories.length,
                  itemBuilder: (context, index) {
                    return MyCategory(
                        text: categories[index].title,
                        image: categories[index].image);
                  },
                ),
              ),
              const SizedBox(height: 20),
              const SectionTitle(title: 'Featured Products'),
              const SizedBox(height: 20),
              SizedBox(
                height: 250,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: products.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: FeaturedProductCard(
                        image: products[index].image,
                        title: products[index].title,
                        price: products[index].price,
                      ),
                    );
                  },
                ),
              ),
              const SectionTitle(title: 'Best Selling Products'),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 250,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: products.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: FeaturedProductCard(
                        image: products[index].image,
                        title: products[index].title,
                        price: products[index].price,
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
