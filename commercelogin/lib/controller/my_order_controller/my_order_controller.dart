import 'package:commercelogin/models/my_order_models/my_order_models.dart';

class OrderController {
  List<MyOrderModel> myorders = [
 MyOrderModel(
      orderNumber: 456543,
      datetime: "2023-12-01",
      price: 55.0,
      status: "Pending",
    ),
    MyOrderModel(
      orderNumber: 254656433,
      datetime: "2023-12-02",
      price: 72.5,
      status: "Delivered",
    ),
    MyOrderModel(
      orderNumber: 3546723,
      datetime: "2023-12-03",
      price: 30.8,
      status: "Processing",
    ),
    MyOrderModel(
      orderNumber: 4365342,
      datetime: "2023-12-04",
      price: 90.2,
      status: "Shipped",
    ),
    MyOrderModel(
      orderNumber: 52354983,
      datetime: "2023-12-05",
      price: 42.0,
      status: "Cancelled",
    ),
    MyOrderModel(
      orderNumber: 6549438,
      datetime: "2023-12-06",
      price: 65.9,
      status: "Pending",
    ),
    MyOrderModel(
      orderNumber: 73583892,
      datetime: "2023-12-07",
      price: 80.5,
      status: "Delivered",
    ),
  ];
}
