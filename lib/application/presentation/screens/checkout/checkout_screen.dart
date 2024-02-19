import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kicks_sneakerapp/application/bussiness_logic/orders/orders_bloc.dart';
import 'package:kicks_sneakerapp/application/bussiness_logic/user/user_bloc.dart';
import 'package:kicks_sneakerapp/application/presentation/routes/routes.dart';
import 'package:kicks_sneakerapp/application/presentation/screens/checkout/widgets/checkout_address_tile.dart';
import 'package:kicks_sneakerapp/application/presentation/screens/checkout/widgets/choose_payment_method.dart';
import 'package:kicks_sneakerapp/application/presentation/screens/checkout/widgets/place_order_with_razorpay.dart';
import 'package:kicks_sneakerapp/application/presentation/utils/colors.dart';
import 'package:kicks_sneakerapp/application/presentation/utils/constants.dart';
import 'package:kicks_sneakerapp/application/presentation/utils/loadin_animation/loading_animation.dart';
import 'package:kicks_sneakerapp/application/presentation/utils/snackbar/showSnack.dart';
import 'package:kicks_sneakerapp/application/presentation/widgets/appbar_widget.dart';

class ScreenCheckout extends StatelessWidget {
  const ScreenCheckout({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<OrdersBloc>().add(const OrdersEvent.getCheckout());
    context.read<UserBloc>().add(UserEvent.getAddress());
    return Scaffold(
      appBar: appbarWidget(title: "Checkout"),
      body: SingleChildScrollView(
        child: SafeArea(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CheckoutAddressTile(),
            const Divider(),
            const Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text("Cart Items"),
            ),
            SizedBox(
              height: sWidth * 0.50,
              child: BlocConsumer<OrdersBloc, OrdersState>(
                listener: (context, state) {
                  if (state.isDone || state.hasError) {
                    showSnack(
                        context: context,
                        message: state.message!,
                        color: state.isDone ? kGreen : kRed);
                  }
                  if (state.isDone && state.message == 'Order placed') {
                    Navigator.pushNamedAndRemoveUntil(
                        context, Routes.bottomNav, (route) => false);
                  }
                },
                builder: (context, state) {
                  if (state.isLoading) {
                    return const LoadingAnimation(width: 0.20);
                  }
        
                  if (state.getCheckoutResponseModel == null ||
                      state.getCheckoutResponseModel!.data == null ||
                      state.getCheckoutResponseModel!.data!.products == null ||
                      state.getCheckoutResponseModel!.data!.products!.isEmpty) {
                    return const Text('items is empty');
                  }
                  final data = state.getCheckoutResponseModel!.data!.products;
        
                  return ListView.builder(
                      itemCount: data!.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Container(
                              width: sWidth * 0.40,
                              height: sWidth * 0.30,
                              margin: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                borderRadius: const BorderRadius.all(kRadius5),
                                color: kGrey,
                                image: DecorationImage(
                                  image: NetworkImage(data[index].image!),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: sWidth * 0.40,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    data[index].productName!,
                                    overflow: TextOverflow.ellipsis,
                                    style: roboto(fontSize: 0.04),
                                  ),
                                  Text(
                                    '₹ ${data[index].totalPrice!.round()} X ${data[index].quantity}',
                                    style: roboto(fontSize: 0.035),
                                  )
                                ],
                              ),
                            ),
                          ],
                        );
                      });
                },
              ),
            ),
            const ChoosePaymentMethod()
          ],
        )),
      ),
      bottomNavigationBar: PlaceOrderWithRazorPay(),
    );
  }
}
