import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kicks_sneakerapp/application/bussiness_logic/cart/cart_bloc.dart';
import 'package:kicks_sneakerapp/application/presentation/screens/cart/widgets/cart_tile.dart';
import 'package:kicks_sneakerapp/application/presentation/utils/colors.dart';
import 'package:kicks_sneakerapp/application/presentation/utils/constants.dart';
import 'package:kicks_sneakerapp/application/presentation/utils/loadin_animation/loading_animation.dart';
import 'package:kicks_sneakerapp/application/presentation/utils/snackbar/showSnack.dart';
import 'package:lottie/lottie.dart';

class CartItemsList extends StatelessWidget {
  const CartItemsList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<CartBloc>().add(const CartEvent.getCart());
    });
    return Column(
      children: [
        Expanded(
          child: BlocConsumer<CartBloc, CartState>(
            listener: (context, state) {
              if (state.hasError || state.isDone) {
                showSnack(
                    context: context,
                    message: state.message!,
                    color: state.isDone ? kGreen : kRed);
              }
            },
            builder: (context, state) {
              if (state.isLoading) {
                return const LoadingAnimation(width: 0.20);
              } else if (state.getCartResponseModel == null ||
                  state.getCartResponseModel!.data == null ||
                  state.getCartResponseModel!.data!.data == null ||
                  state.getCartResponseModel!.data!.data!.isEmpty) {
                return Center(
                  child: Text(
                    "Your cart is empty",
                    style: tektur(fontSize: 0.05),
                  ),
                );
              } else if (state.getCartResponseModel != null &&
                  state.getCartResponseModel!.data!.data!.isNotEmpty) {
                return ListView.builder(
                  itemCount: state.getCartResponseModel!.data!.data!.length,
                  shrinkWrap: true,
                  itemBuilder: (context, index) => SizedBox(
                    height: sWidth * 0.40,
                    width: sWidth,
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: SizedBox(
                        height: double.infinity,
                        child: CartTile(
                            inventoryCart:
                                state.getCartResponseModel!.data!.data![index]),
                      ),
                    ),
                  ),
                );
              } else {
                return const Text('Your cart is empty');
              }
            },
          ),
        ),
      ],
    );
  }
}
