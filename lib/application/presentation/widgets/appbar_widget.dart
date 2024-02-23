import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconsax/iconsax.dart';
import 'package:kicks_sneakerapp/application/bussiness_logic/cart/cart_bloc.dart';
import 'package:kicks_sneakerapp/application/bussiness_logic/user/user_bloc.dart';
import 'package:kicks_sneakerapp/application/presentation/routes/routes.dart';
import 'package:kicks_sneakerapp/application/presentation/utils/colors.dart';
import 'package:kicks_sneakerapp/application/presentation/utils/constants.dart';

AppBar appbarWidget({required String title}) {
  return AppBar(
    systemOverlayStyle: const SystemUiOverlayStyle(
        statusBarColor: kWhite, systemNavigationBarColor: kWhite),
    title: Text(
      title != "Kicks" ? title : "Kicks",
      style: const TextStyle(fontWeight: FontWeight.bold),
      overflow: TextOverflow.ellipsis, // Truncate long titles
    ),
    centerTitle: true,
    leading: BlocBuilder<UserBloc, UserState>(
      builder: (context, state) {
        return Row(
          
          children: [
            kWidth20,
            Flexible(
              child: Text(
                state.userDetails != null
                    ? "Hi ${state.userDetails!.name!}"
                    : "AA",
                style: roboto(color: kBlack, fontSize: 0.03),
                softWrap: false, // Keep text in a single line
              ),
            ),
          ],
        );
      },
    ),
    actions: const [CartButtonWidget(), kWidth10],
  );
}

class CartButtonWidget extends StatelessWidget {
  const CartButtonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<CartBloc>().add(const CartEvent.getCart());
    });
    return Stack(
      children: [
        CircleAvatar(
          backgroundColor: kGrey,
          child: IconButton(
            onPressed: () {
              Navigator.pushNamed(context, Routes.cartScreen);
            },
            icon: const Icon(
              Icons.shopping_cart,
              size: 25,
            ),
          ),
        ),
        Positioned(
          top: -6,
          right: 0,
          child: BlocBuilder<CartBloc, CartState>(
            // buildWhen: (p, c) => p.cartItems.length != c.cartItems.length,
            builder: (context, state) {
              if (state.cartItems.isEmpty) {
                return const SizedBox();
              } else {
                return CircleAvatar(
                  backgroundColor: kWhite.withOpacity(0),
                  radius: 10,
                  child: Text(
                    state.cartItems.length.toString(),
                    style: tektur(fontWeight: FontWeight.bold),
                  ),
                );
              }
            },
          ),
        ),
      ],
    );
  }
}
