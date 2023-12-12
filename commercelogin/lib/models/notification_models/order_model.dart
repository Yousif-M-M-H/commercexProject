class OrderStatusModel {
    String? orderstaus;
    int? orderNumber;
    DateTime? dateTime;

    OrderStatusModel({
      this.orderstaus,
      this.orderNumber,
      this.dateTime
    });

    String getOrderDescription() {
    return "Order $orderNumber has been\ncompleted & arrived at the destination\naddress (please rate your order)";
  }
}