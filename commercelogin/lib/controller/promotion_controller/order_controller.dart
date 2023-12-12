import 'package:commercelogin/models/notification_models/order_model.dart';

class OrderStatusController {
  List<OrderStatusModel> orderStatusModel = [
    OrderStatusModel(
      orderstaus: "Order Arrived",
      orderNumber: 3209485343,
      dateTime: DateTime.now()
    ),
        OrderStatusModel(
      orderstaus: "Order Success",
      orderNumber: 04952323,
      dateTime: DateTime.now()
    ),
        OrderStatusModel(
      orderstaus: "Payment Confirmed",
      orderNumber: 78960543,
      dateTime: DateTime.now()
    ),

  ];
}
