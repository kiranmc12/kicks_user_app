// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:kicks_sneakerapp/application/bussiness_logic/cart/cart_bloc.dart';
import 'package:kicks_sneakerapp/application/presentation/screens/cart/widgets/bordered_container.dart';
import 'package:kicks_sneakerapp/application/presentation/utils/constants.dart';
import 'package:kicks_sneakerapp/domain/models/cart/get_cart_response_model/inventory_cart.dart';

class QuantityAdder extends StatelessWidget {
  const QuantityAdder({
    super.key,
    required this.inventoryCart,
  });
  final InventoryCart inventoryCart;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: BlocBuilder<CartBloc, CartState>(
        // buildWhen: (previous, current) =>
        // previous.cartItems[inventoryCart.productId!] !=
        // current.cartItems[inventoryCart.productId!],
        builder: (context, state) {
          return Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  context.read<CartBloc>().add(CartEvent.updateQuantityMinus(
                      productId: inventoryCart.productId!));
                },
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  height: sWidth * 0.07,
                  decoration: boxborder,
                  child: Center(
                      child: Text(
                    '-',
                    style: buttonStyleQuantity,
                  )),
                ),
              ),
              kWidth5,
              BorderContainer(
                  string:
                      state.cartItems[inventoryCart.productId!]!.toString()),
              kWidth5,
              InkWell(
                onTap: () {
                  context.read<CartBloc>().add(CartEvent.updateQuantityPlus(
                      productId: inventoryCart.productId!));
                },
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  height: sWidth * 0.07,
                  decoration: boxborder,
                  child: Center(
                      child: Text(
                    '+',
                    style: buttonStyleQuantity,
                  )),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
