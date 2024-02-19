import 'package:flutter/material.dart';
import 'package:order_tracker_zen/order_tracker_zen.dart';

class OrderTracker extends StatelessWidget {
  OrderTracker({super.key, required this.status});

  final String status;
  final trackerData = [
    TrackerData(
      title: "PENDING",
       date: "ORDER PLACED", 
       tracker_details: [
      TrackerDetails(
        title: "Your order is Pending",
        datetime: "Waiting for confirmataion",
      ),
      TrackerDetails(
          title: "Your order was placed,waiting to be shipped",
          datetime: "waiting to be shipped")
    ]),
    TrackerData(
      title: "SHIPPED",
      date: "order shipped",
      tracker_details: [
        TrackerDetails(
          title: "Your order was shipped",
          datetime: "will be there soon",
        ),
      ],
    ),
    TrackerData(
      title: "DELIVERED",
      date: "order delivered",
      tracker_details: [
        TrackerDetails(
          title: "You received your order",
          datetime: "Order received successfully",
        ),
      ],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return OrderTrackerZen(
        tracker_data: status == 'PENDING'
            ? trackerData.sublist(0, 1)
            : status == 'SHIPPED'
                ? trackerData.sublist(0, 2)
                : trackerData);
  }
}
