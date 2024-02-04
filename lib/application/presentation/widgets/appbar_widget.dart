import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
      actions: [const CartButtonWidget()]);
}

class CartButtonWidget extends StatelessWidget {
  const CartButtonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CircleAvatar(
          backgroundColor: kGrey,
          child: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.shopping_cart),
          ),
        ),
        const Positioned(
          top: 0,
          right: 0,
          child: Icon(
            Icons.circle,
            size: 15,
            color: kBlack,
          ),
        ),
      ],
    );
  }
}
