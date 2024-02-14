import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kicks_sneakerapp/application/bussiness_logic/cart/cart_bloc.dart';
import 'package:kicks_sneakerapp/application/presentation/routes/routes.dart';
import 'package:kicks_sneakerapp/application/presentation/utils/colors.dart';
import 'package:kicks_sneakerapp/application/presentation/utils/constants.dart';
import 'package:kicks_sneakerapp/domain/models/cart/add_to_cart_model/add_to_cart_model.dart';
import 'package:kicks_sneakerapp/domain/models/inventory/get_inventory_response_model/datum.dart';

class CategoryDetailContainer extends StatelessWidget {
  final Inventory inventory;
  const CategoryDetailContainer({super.key, required this.inventory});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
        height: sWidth * 1.2,
        decoration:
            const BoxDecoration(borderRadius: BorderRadius.all(kRadius10)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InkWell(
                onTap: () {},
                child: Container(
                  height: sWidth * 0.90,
                  decoration: const BoxDecoration(
                      color: kWhite, borderRadius: BorderRadius.all(kRadius10)),
                  child: SizedBox(
                      width: double.infinity,
                      child: Image.network(
                        inventory.image!,
                        fit: BoxFit.fill,
                      )),
                )),
            kHeight5,
            Text(
              inventory.productName!,
              style: tektur(fontSize: 0.04, fontWeight: FontWeight.bold),
            ),
            Row(
              children: [
                Text(
                  '₹ ${inventory.discountedPrice!.roundToDouble().toString()}',
                  style: tektur(fontSize: 0.040, fontWeight: FontWeight.bold),
                ),
                kWidth10,
                Text(
                  '₹ ${inventory.price!.roundToDouble().toString()}',
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: sWidth * 0.040,
                      color: kBlack.withOpacity(0.7),
                      decoration: TextDecoration.lineThrough),
                ),
                const Spacer(),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  decoration: const BoxDecoration(
                      color: kGreen, borderRadius: BorderRadius.all(kRadius5)),
                  child: Text(
                    " ${(100 - (inventory.discountedPrice! / inventory.price!) * 100).round()}% off",
                    style: roboto(fontWeight: FontWeight.bold, color: kWhite),
                  ),
                ),
              ],
            ),
            BlocBuilder<CartBloc, CartState>(
              builder: (context, state) {
                return ElevatedButton(
                  onPressed: () {
                    if (state.cartItems.containsKey(inventory.id)) {
                      Navigator.pushNamed(context, Routes.cartScreen);
                    } else {
                      context.read<CartBloc>().add(CartEvent.addToCart(
                              addToCartModel: AddToCartModel(
                            inventoryId: inventory.id!,
                          )));
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange,
                  ),
                  child: Text(
                    state.cartItems.containsKey(inventory.id)
                        ? "Go to Cart"
                        : "Add to Cart",
                    style: roboto(color: kWhite, fontWeight: FontWeight.bold),
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
