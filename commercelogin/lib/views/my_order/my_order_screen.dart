import 'package:commercelogin/controller/my_order_controller/my_order_controller.dart';
import 'package:commercelogin/views/my_order/components/my_order_container.dart';
import 'package:flutter/material.dart';

class MyOrdersScreen extends StatelessWidget {
  const MyOrdersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var orderController = OrderController();
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "My Orders",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.separated(
              itemCount: orderController.myorders.length,
              separatorBuilder: (context, index) => const SizedBox(
                height: 10,
              ),
              itemBuilder: (context, index) {
                return MyOrderContainerWidget(
                    orderNumber: orderController.myorders[index].orderNumber!,
                    datetime: orderController.myorders[index].datetime!,
                    price: orderController.myorders[index].price!,
                    status: orderController.myorders[index].status!);
              },
            ),
          )
        ],
      ),
    );
  }
}
