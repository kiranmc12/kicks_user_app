
import 'package:flutter/material.dart';
import 'package:kicks_sneakerapp/application/presentation/utils/colors.dart';
import 'package:kicks_sneakerapp/application/presentation/utils/constants.dart';

import '../../../../../domain/models/orders/get_order_details_response_model/product.dart';

class OrderDetailItemTile extends StatelessWidget {
  const OrderDetailItemTile({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          height: sWidth * 0.22,
          width: sWidth * 0.18,
          decoration: BoxDecoration(
              image: DecorationImage(image: NetworkImage(product.image!)),
              boxShadow: [
                BoxShadow(
                    color: kBlack.withOpacity(0.8),
                    blurRadius: 1.5,
                    offset: const Offset(0, 2))
              ],
              color: kWhite,
              borderRadius: const BorderRadius.all(kRadius10)),
        ),
        kWidth20,
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: sWidth * 0.60,
              child: Text(
                product.productName!,
                overflow: TextOverflow.ellipsis,
                style:
                    const TextStyle(fontWeight: FontWeight.w400, fontSize: 18),
              ),
            ),
            kHeight10,
            Text('Quantity - ${product.quantity}'),
            Row(
              children: [
                const Text('Amount : '),
                Text(
                  '₹ ${product.amount}',
                  style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
                )
              ],
            ),
            kHeight5,
          ],
        ),
      ],
    );
  }
}