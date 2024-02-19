
import 'package:flutter/material.dart';
import 'package:kicks_sneakerapp/application/presentation/screens/orders/widgets/order_detail_view.dart';
import 'package:kicks_sneakerapp/application/presentation/widgets/appbar_widget.dart';

class ScreenOrderDetails extends StatelessWidget {
  const ScreenOrderDetails({super.key, required this.orderID});
   final int orderID;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbarWidget(title: "Order Details"),
      body: OrderDetailViews(orderId: orderID),
    );
  }
}