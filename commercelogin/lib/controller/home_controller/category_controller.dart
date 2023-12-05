import 'package:commercelogin/models/home_models/category_model.dart';

class CategoryController {
  List<CategoryModel> getCategoryList() {
    List<CategoryModel> categories = [
      CategoryModel(image: 'assets/images/pc2.png', title: 'Computer'),
      CategoryModel(image: 'assets/images/phones.png', title: 'Phones'),
      CategoryModel(image: 'assets/images/clothes.jpeg', title: 'Clothes'),
    ];
    return categories;
  }        
}
