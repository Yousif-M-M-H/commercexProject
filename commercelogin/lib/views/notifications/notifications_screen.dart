import 'package:commercelogin/controller/promotion_controller/order_controller.dart';
import 'package:commercelogin/controller/promotion_controller/promotion_controller.dart';
import 'package:commercelogin/views/notifications/components/notfitcation_title.dart';
import 'package:commercelogin/views/notifications/components/order_container.dart';
import 'package:commercelogin/views/notifications/components/promotions_container_widget.dart';
import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var promotionController = PromotionController();
    var orderStatusController = OrderStatusController();
    return Scaffold(
        appBar: AppBar(
          title: const Text("Notifications",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.bold)),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const NotificationsTitleWidget(title: "Promotions"),
              const SizedBox(height: 10),
              SizedBox(
                height: 250,
                child: ListView.separated(
                  separatorBuilder: (context, index) => const SizedBox(
                    height: 10,
                  ),
                  itemCount: promotionController.promotionList.length,
                  itemBuilder: (context, index) {
                    return PromotionsContainerWidget(
                      description:
                          promotionController.promotionList[index].description!,
                      image: promotionController.promotionList[index].image!,
                      dateTime:
                          promotionController.promotionList[index].dateTime!,
                    );
                  },
                ),
              ),
              const NotificationsTitleWidget(title: "Your Activity"),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 350,
                child: ListView.separated(
                  separatorBuilder: (context, index) => const SizedBox(
                    height: 10,
                  ),
                  itemCount: orderStatusController.orderStatusModel.length,
                  itemBuilder: (context, index) {
                    return OrderContainerWidget(
                        description:
                            "Order ${orderStatusController.orderStatusModel[index].orderNumber} has been\ncompleted & arrived at the destinatio\naddress (please rate your order)",
                        dateTime: orderStatusController
                            .orderStatusModel[index].dateTime!,
                        title: orderStatusController
                            .orderStatusModel[index].orderstaus!);
                  },
                ),
              )
            ],
          ),
        ));
  }
}
