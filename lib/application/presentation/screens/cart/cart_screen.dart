import 'package:flutter/material.dart';
import 'package:kicks_sneakerapp/application/presentation/screens/cart/widgets/cart_list.dart';
import 'package:kicks_sneakerapp/application/presentation/screens/cart/widgets/check_out_bottom_container.dart';
import 'package:kicks_sneakerapp/application/presentation/widgets/appbar_widget.dart';

class ScreenCart extends StatelessWidget {
  const ScreenCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbarWidget(title: 'My Cart'),
      body: const CartItemsList(),
      bottomNavigationBar: const BottomCheckOutSession(),
    );
  }
}
