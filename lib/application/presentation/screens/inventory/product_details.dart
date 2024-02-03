import 'package:flutter/material.dart';
import 'package:kicks_sneakerapp/application/presentation/screens/home/widgets/circle_avatar_widget.dart';
import 'package:kicks_sneakerapp/application/presentation/widgets/appbar_widget.dart';
import 'package:kicks_sneakerapp/application/presentation/widgets/image_show_container.dart';
import 'package:kicks_sneakerapp/domain/models/inventory/get_inventory_response_model/datum.dart';

class ScreenInventoryDetails extends StatelessWidget {
  final Inventory inventory;
  const ScreenInventoryDetails({super.key, required this.inventory});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbarWidget(title: "Details"),
      body: ListView(
        children: [
          ImageShowContainer(image: inventory.image!, width: 1),
          
        ],
      ),
    );
  }
}
