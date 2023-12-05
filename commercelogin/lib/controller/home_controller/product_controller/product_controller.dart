import 'package:commercelogin/models/home_models/product_model.dart';

class ProductController {
  List<ProductModel> getProductList() {
    List<ProductModel> products = [
      ProductModel(image: 'assets/images/pc2.png', title: 'Computer', price: 43.6),
      ProductModel(image: 'assets/images/phones.png', title: 'Phones', price: 505.4),
      ProductModel(image: 'assets/images/clothes.jpeg', title: 'Clothes', price: 603.3),
    ];
    return products;
  }        
}
