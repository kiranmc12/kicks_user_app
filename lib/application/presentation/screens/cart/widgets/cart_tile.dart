import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:kicks_sneakerapp/application/bussiness_logic/cart/cart_bloc.dart';
import 'package:kicks_sneakerapp/application/presentation/screens/cart/widgets/quantity_adder.dart';
import 'package:kicks_sneakerapp/application/presentation/utils/colors.dart';
import 'package:kicks_sneakerapp/application/presentation/utils/constants.dart';
import 'package:kicks_sneakerapp/domain/models/cart/get_cart_response_model/inventory_cart.dart';

class CartTile extends StatelessWidget {
  const CartTile({
    super.key,
    required this.inventoryCart,
  });

  final InventoryCart inventoryCart;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            height: sWidth * 0.33,
            width: sWidth,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(kRadius10),
            ),
            child: Slidable(
              direction: Axis.horizontal,
              endActionPane: ActionPane(
                motion: const BehindMotion(),
                children: [
                  SlidableAction(
                    onPressed: (context) {
                      context.read<CartBloc>().add(CartEvent.removeFromCart(
                          productId: inventoryCart.productId!));
                    },
                    backgroundColor: kBlack,
                    foregroundColor: kWhite,
                    icon: Icons.delete,
                    label: 'Remove',
                  ),
                ],
              ),
              child: Card(
                color: kGrey,
                margin: const EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: sWidth * 0.30,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: sWidth * 0.50,
                          child: Text(
                            inventoryCart.productName ?? 'product',
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(
                                fontWeight: FontWeight.w400, fontSize: 18),
                          ),
                        ),
                        kHeight5,
                        SizedBox(
                          width: sWidth * 0.50,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(
                                    '${(100 - (inventoryCart.discountedPrice! / inventoryCart.totalPrice!) * 100).round()}% Discount',
                                    style: const TextStyle(color: kGreen),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        '₹ ${inventoryCart.discountedPrice!.round()}',
                                        style: priceStyle,
                                      ),
                                      kWidth10,
                                      Text(
                                        '₹ ${inventoryCart.totalPrice!.round().toString()}',
                                        style: priceStyleCross,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              const Spacer(),
                              // const BorderContainer(string: inventoryCart.),
                            ],
                          ),
                        ),
                        QuantityAdder(
                          inventoryCart: inventoryCart,
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        Positioned(
          bottom: sWidth * 0.10,
          left: sWidth * 0.10,
          child: Container(
            height: sWidth * 0.28,
            width: sWidth * 0.25,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(inventoryCart.image ?? shoe1uRL),
                  fit: BoxFit.cover),
              borderRadius: const BorderRadius.all(kRadius10),
            ),
          ),
        )
      ],
    );
  }
}
