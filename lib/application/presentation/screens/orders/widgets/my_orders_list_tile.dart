import 'package:flutter/material.dart';
import 'package:kicks_sneakerapp/application/presentation/screens/orders/widgets/stack_image_container.dart';
import 'package:kicks_sneakerapp/application/presentation/utils/colors.dart';
import 'package:kicks_sneakerapp/application/presentation/utils/constants.dart';
import 'package:kicks_sneakerapp/domain/models/orders/get_all_orders_resposne_model/datum.dart';

class MyOrderListTile extends StatelessWidget {
  const MyOrderListTile({
    super.key,
    required this.data,
  });

  final Orders data;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(10),
      height: sWidth * 0.3,
      width: sWidth,
      decoration: const BoxDecoration(
          boxShadow: [BoxShadow(color: kBlack)],
          color: kGrey,
          borderRadius: BorderRadius.all(kRadius10),
          border: Border()),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          data.images != null && data.images!.isNotEmpty
              ? SizedBox(
                  height: sWidth * 0.22,
                  width: sWidth * 0.20,
                  child: Stack(
                    children: [
                      Positioned(
                        right: 0,
                        bottom: 0,
                        child: StackImageContainer(image: data.images![0]),
                      ),
                      data.images!.length > 1
                          ? Positioned(
                              top: 0,
                              left: 0,
                              child:
                                  StackImageContainer(image: data.images![1]),
                            )
                          : const SizedBox(),
                    ],
                  ),
                )
              : SizedBox(
                  width: sWidth * 0.20,
                ),
          kWidth20,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  const Text(
                    'Total Price :',
                    style: TextStyle(fontWeight: FontWeight.w400, fontSize: 18),
                  ),
                  Text(
                    data.orderDetails!.price!.round().toString(),
                    style: priceStyle,
                  )
                ],
              ),
              kHeight10,
              Row(
                children: [
                  const Text('Order Status :'),
                  Text(
                    data.orderDetails!.orderStatus!,
                    style: roboto(),
                  )
                ],
              ),
              kHeight5,
              Text(
                data.orderDetails!.paymentmethodId.toString(),
                style: const TextStyle(fontWeight: FontWeight.w500),
              ),
            ],
          ),
          const Spacer(),
          const Align(
            alignment: Alignment.center,
            child: Icon(
              Icons.arrow_forward_ios_outlined,
              size: 15,
            ),
          )
        ],
      ),
    );
  }
}
