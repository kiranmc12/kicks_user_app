import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kicks_sneakerapp/application/bussiness_logic/cart/cart_bloc.dart';
import 'package:kicks_sneakerapp/application/presentation/routes/routes.dart';
import 'package:kicks_sneakerapp/application/presentation/screens/cart/widgets/cart_list.dart';
import 'package:kicks_sneakerapp/application/presentation/utils/colors.dart';
import 'package:kicks_sneakerapp/application/presentation/utils/constants.dart';

AppBar appbarWidget({required String title}) {
  return AppBar(
    systemOverlayStyle: const SystemUiOverlayStyle(
        statusBarColor: kWhite, systemNavigationBarColor: kWhite),
    title: Text(
      title != "Kicks" ? title : "Kicks",
      style: TextStyle(fontWeight: FontWeight.bold),
    ),
    centerTitle: true,
    actions: [const CartButtonWidget(), kWidth10],
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
                return SizedBox();
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
