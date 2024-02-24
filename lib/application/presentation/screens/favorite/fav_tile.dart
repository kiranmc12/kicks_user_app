import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kicks_sneakerapp/application/bussiness_logic/cart/cart_bloc.dart';
import 'package:kicks_sneakerapp/application/presentation/routes/routes.dart';
import 'package:kicks_sneakerapp/application/presentation/screens/home/widgets/product_tile.dart';
import 'package:kicks_sneakerapp/application/presentation/utils/constants.dart';
import 'package:kicks_sneakerapp/domain/models/cart/add_to_cart_model/add_to_cart_model.dart';
import 'package:kicks_sneakerapp/domain/models/inventory/get_inventory_response_model/datum.dart';

class FavTile extends StatelessWidget {
  const FavTile({
    super.key,
    required this.inventory,
  });

  final Inventory inventory;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        ProductTile(inventories: inventory),
        BlocBuilder<CartBloc, CartState>(
          builder: (context, state) {
            return ElevatedButton(
                style: elevatedButtonStyle.copyWith(),
                onPressed: () {
                  if (state.cartItems.containsKey(inventory.id)) {
                    Navigator.pushNamed(context, Routes.cartScreen);
                  } else {
                    context.read<CartBloc>().add(CartEvent.addToCart(
                        addToCartModel:
                            AddToCartModel(inventoryId: inventory.id!)));
                  }
                },
                child: Text(state.cartItems.containsKey(inventory.id)
                    ? 'Go To Cart'
                    : 'Add To Cart'));
          },
        ),
      ],
    );
  }
}
