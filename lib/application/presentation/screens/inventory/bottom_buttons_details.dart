import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kicks_sneakerapp/application/bussiness_logic/cart/cart_bloc.dart';
import 'package:kicks_sneakerapp/application/presentation/routes/routes.dart';
import 'package:kicks_sneakerapp/application/presentation/screens/inventory/fav_button.dart';
import 'package:kicks_sneakerapp/application/presentation/utils/colors.dart';
import 'package:kicks_sneakerapp/application/presentation/utils/constants.dart';
import 'package:kicks_sneakerapp/domain/models/cart/add_to_cart_model/add_to_cart_model.dart';
import 'package:kicks_sneakerapp/domain/models/inventory/get_inventory_response_model/datum.dart';

class BottomButtonsDetails extends StatelessWidget {
  const BottomButtonsDetails({
    super.key,
    required this.inventory,
  });

  final Inventory inventory;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        decoration: const BoxDecoration(
            color: kGrey, borderRadius: BorderRadius.all(kRadius5)),
        child: FavButton(isFav: inventory.ifPresentAtWishlist!, id: inventory.id!,),
      ),
      trailing: BlocBuilder<CartBloc, CartState>(
        buildWhen: (p, c) =>
            p.cartItems[inventory.id!] !=
            c.cartItems[inventory.id!],
        builder: (context, state) {
          return ElevatedButton(
              onPressed: () {
                if (state.cartItems.containsKey(inventory.id)) {
                  Navigator.pushNamed(context, Routes.cartScreen);
                } else {
                  context.read<CartBloc>().add(CartEvent.addToCart(
                      addToCartModel: AddToCartModel(
                          inventoryId: inventory.id!)));
                }
              },
              style: ElevatedButton.styleFrom(
                  side: const BorderSide(color: kWhite),
                  backgroundColor: kBlack,
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(kRadius10)),
                  foregroundColor: kWhite),
              child: Text(state.cartItems.containsKey(inventory.id)
                  ? "Go to cart"
                  : "Add to Cart"));
        },
      ),
    );
  }
}

