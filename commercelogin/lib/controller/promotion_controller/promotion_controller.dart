import 'package:commercelogin/models/notification_models/promotion_model.dart';

class PromotionController {
  List<PromotionsModel> promotionList = [
  PromotionsModel(
      image: "https://th.bing.com/th/id/R.032d62d71c2f06ac5951c3f40677146e?rik=%2fV1LP3ZWXwMnWQ&pid=ImgRaw&r=0",
      dateTime: DateTime.now(),
      description: "Lorem ipsum dolor sit amet,\nconsectetur adipiscing elit, sed"),  
      PromotionsModel(
      image: "https://th.bing.com/th/id/R.673f399bc9df3ac53d3560d86696a208?rik=EmY0lVfpvkQ%2bSA&pid=ImgRaw&r=0",
      dateTime: DateTime.now(),
      description: "Excepteur efrfrefe cupidatat\nnon proident, sunt in culpa qui"),
  ];
}