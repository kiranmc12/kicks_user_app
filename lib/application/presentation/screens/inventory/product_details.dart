import 'package:flutter/material.dart';
import 'package:kicks_sneakerapp/application/presentation/screens/inventory/bottom_buttons_details.dart';
import 'package:kicks_sneakerapp/application/presentation/utils/colors.dart';
import 'package:kicks_sneakerapp/application/presentation/utils/constants.dart';
import 'package:kicks_sneakerapp/application/presentation/widgets/appbar_widget.dart';
import 'package:kicks_sneakerapp/application/presentation/widgets/image_show_container.dart';
import 'package:kicks_sneakerapp/application/presentation/widgets/text_container_off_size.dart';
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
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  inventory.productName!,
                  style: tektur(fontSize: 0.05),
                ),
                kHeight10,
                Text(
                  '₹ ${inventory.discountedPrice!.roundToDouble().toString()}',
                  style: priceStyle,
                ),
                Text(
                  '₹ ${inventory.price!.roundToDouble().toString()}',
                  style: priceStyleCross,
                ),
                kHeight20,
                Row(
                  children: [
                    Text(
                      'Offer Availabe',
                      style: tektur(),
                    ),
                    kWidth10,
                    TextContainerOffSize(
                        text:
                            '${(100 - (inventory.discountedPrice! / inventory.price!) * 100).round()}% off',
                        color: kGreen)
                  ],
                ),
                kHeight20,
                Row(
                  children: [
                    Text(
                      'Size',
                      style: tektur(),
                    ),
                    kWidth10,
                    TextContainerOffSize(text: inventory.size!, color: kBlack)
                  ],
                ),
                kHeight10,
                BottomButtonsDetails(inventory: inventory),
              ],
            ),
          )
        ],
      ),
    );
  }
}
