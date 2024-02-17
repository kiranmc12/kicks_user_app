import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kicks_sneakerapp/application/bussiness_logic/cart/cart_bloc.dart';
import 'package:kicks_sneakerapp/application/presentation/utils/colors.dart';
import 'package:kicks_sneakerapp/application/presentation/utils/constants.dart';
import 'package:kicks_sneakerapp/domain/models/coupon/get_coupon_response/datum.dart';

class CouponCard extends StatelessWidget {
  const CouponCard({
    super.key,
    required this.coupon,
  });

  final Coupons coupon;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: sWidth,
      child: Card(
        color: kGrey,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                coupon.coupon!.toUpperCase(),
                style: tektur(fontSize: 0.05),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '${coupon.discountRate} % Discound',
                    style: tektur(color: kGreen,fontSize: 0.04,fontWeight: FontWeight.bold),
                  ),
                  TextButton(
                    onPressed: () {
                      context
                          .read<CartBloc>()
                          .add(CartEvent.chooseCoupon(coupon: coupon));
                      Navigator.pop(context);
                    },
                    child:  Text(
                      'Apply Coupon',
                      style: tektur(color: kBlue),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
