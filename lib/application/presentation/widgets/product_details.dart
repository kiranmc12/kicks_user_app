import 'package:flutter/material.dart';
import 'package:kicks_sneakerapp/application/presentation/utils/colors.dart';
import 'package:kicks_sneakerapp/application/presentation/utils/constants.dart';
import 'package:kicks_sneakerapp/application/presentation/widgets/text_container_off_size.dart';
import 'package:kicks_sneakerapp/domain/models/inventory/get_inventory_response_model/datum.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({
    super.key,
    required this.inventory,
  });

  final Inventory inventory;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            inventory.productName!,
            style: roboto(),
          ),
          kHeight10,
          Text(
            '₹ ${inventory.discountedPrice!.roundToDouble().toString()}',
            style: roboto(),
          ),
          Text(
            '₹ ${inventory.price!.roundToDouble().toString()}',
            style: roboto(),
          ),
          kHeight20,
          Row(
            children: [
               Text(
                'Offer Availabe',
                style: roboto(),
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
                style: roboto(),
              ),
              kWidth10,
              TextContainerOffSize(text: inventory.size!, color: kBlack)
            ],
          ),
        ],
      ),
    );
  }
}
