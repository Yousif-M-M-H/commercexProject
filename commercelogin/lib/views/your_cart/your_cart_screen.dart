import 'package:commercelogin/controller/cart_controller/your_cart_controller.dart';
import 'package:commercelogin/views/your_cart/components/product_container.dart';
import 'package:flutter/material.dart';

class YourCartScreen extends StatelessWidget {
  const YourCartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var yourCartController = YourCartController();
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Your Cart",
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18),
        ),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 10),
          Text("${yourCartController.allproducts.length} products"),
          const SizedBox(height: 10),
          Expanded(
            child: ListView.separated(
              itemCount: yourCartController.allproducts.length,
              separatorBuilder: (context, index) => const SizedBox(
                height: 10,
              ),
              itemBuilder: (context, index) {
                return ProductContainer(
                  image: yourCartController.allproducts[index].image!,
                  price: yourCartController.allproducts[index].price!,
                  title: yourCartController.allproducts[index].title!,
                );
              },
            ),
          )
        ],
      ),
      bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Sub Total",
                          style: TextStyle(color: Colors.grey[500]),
                        ),
                        const Text(
                          "\$150.0",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Divider(
                      height: 8,
                      color: Colors.grey[400],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Total",
                          style: TextStyle(color: Colors.grey[500]),
                        ),
                        const Text(
                          "\$170.0",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Expanded(
                  child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                child: MaterialButton(
                  height: 50,
                  color: Colors.deepPurpleAccent,
                  onPressed: () {},
                  child: const Text(
                    "Check Out",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontSize: 18),
                  ),
                ),
              ))
            ],
          )),
    );
  }
}
