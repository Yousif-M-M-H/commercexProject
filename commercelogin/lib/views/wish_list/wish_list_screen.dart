import 'package:commercelogin/controller/wish_list_controller/wish_list_controller.dart';
import 'package:commercelogin/views/wish_list/components/product_details_card.dart';
import 'package:commercelogin/views/wish_list/components/wish_list_search.dart';
import 'package:flutter/material.dart';

class WishListScreen extends StatelessWidget {
  const WishListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    WishListController wishListController = WishListController();
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Wish List",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
        ),
        centerTitle: true,
      ),
  body: Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
     const Padding(
        padding:  EdgeInsets.symmetric(horizontal: 13),
        child:  WishListSearchWidget(),
      ) , 
      const SizedBox(height: 10,),

      Expanded(
        child: ListView.builder(
          itemCount: wishListController.wishlistProducts.length,
          itemBuilder: (context, index) {
      return ProductCardWishList(
        image: wishListController.wishlistProducts[index].image!,
        title: wishListController.wishlistProducts[index].title!,
        price: wishListController.wishlistProducts[index].price!,
        
      );
        
      },))
    ],
  )

    );
  }
}
