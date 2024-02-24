import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconsax/iconsax.dart';
import 'package:kicks_sneakerapp/application/bussiness_logic/cart/cart_bloc.dart';
import 'package:kicks_sneakerapp/application/presentation/screens/coupons/widgets/coupon_cards.dart';
import 'package:kicks_sneakerapp/application/presentation/utils/colors.dart';
import 'package:kicks_sneakerapp/application/presentation/utils/constants.dart';

class ScreenCoupon extends StatelessWidget {
  const ScreenCoupon({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<CartBloc>().add(const CartEvent.getCoupon());
    });
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  "Apply Coupon",
                  style: priceStyle,
                ),
                const Icon(Iconsax.tag,color: kBlack,)
              ],
            ),
            
            // Container(
            //   height: sWidth * 0.10,
            //   width: sWidth * 0.70,
            //   decoration: BoxDecoration(
            //     color: kGrey.withOpacity(0.8),
            //     borderRadius: const BorderRadius.all(kRadius10),
            //   ),
            //   child: const TextField(
            //     textCapitalization: TextCapitalization.characters,
            //     style: TextStyle(fontWeight: FontWeight.w700),
            //     decoration: InputDecoration(
            //       border: InputBorder.none,
            //       prefixIcon: Icon(
            //         Iconsax.tag,
            //         color: kBlack,
            //       ),
            //     ),
            //   ),
            // ),
            const Divider(),
            BlocBuilder<CartBloc, CartState>(
              buildWhen: (c, p) => c.coupons != p.coupons,
              builder: (context, state) {
                if (state.coupons == null || state.coupons!.isEmpty) {
                  return Center(
                    child: Text(
                      "Sorry!,No coupons available",
                      style: roboto(),
                    ),
                  );
                }
                return Expanded(
                    child: Expanded(
                        child: ListView.separated(
                  itemBuilder: (context, index) =>
                      CouponCard(coupon: state.coupons![index]),
                  itemCount: state.coupons!.length,
                  separatorBuilder: (context,index)=>kHeight10,
                  
                )));
              },
            )
          ],
        ),
      )),
    );
  }
}
