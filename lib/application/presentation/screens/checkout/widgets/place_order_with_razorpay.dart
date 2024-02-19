import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:kicks_sneakerapp/application/bussiness_logic/cart/cart_bloc.dart';
import 'package:kicks_sneakerapp/application/bussiness_logic/orders/orders_bloc.dart';
import 'package:kicks_sneakerapp/application/bussiness_logic/user/user_bloc.dart';
import 'package:kicks_sneakerapp/application/presentation/utils/colors.dart';
import 'package:kicks_sneakerapp/application/presentation/utils/constants.dart';
import 'package:kicks_sneakerapp/application/presentation/utils/snackbar/showSnack.dart';
import 'package:kicks_sneakerapp/domain/models/orders/place_order_model/place_order_model.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';

class PlaceOrderWithRazorPay extends StatefulWidget {
  const PlaceOrderWithRazorPay({super.key});

  @override
  State<PlaceOrderWithRazorPay> createState() => _PlaceOrderWithRazorPayState();
}

class _PlaceOrderWithRazorPayState extends State<PlaceOrderWithRazorPay> {
  late Razorpay _razorpay;
  int paymentId = 0;

  @override
  void initState() {
    _razorpay = Razorpay();
    _razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, _handlePaymentSuccess);
    _razorpay.on(Razorpay.EVENT_PAYMENT_ERROR, _handlePaymentError);
    _razorpay.on(Razorpay.EVENT_EXTERNAL_WALLET, _handleExternalWallet);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<OrdersBloc>().add(const OrdersEvent.getCheckout());
    });
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: BlocBuilder<OrdersBloc, OrdersState>(
        builder: (context, state) {
          return Row(
            children: [
              // Text(
              //   "₹ ${state.getCheckoutResponseModel!.data!
              //                   .discountedPrice!
              //                   .round() *
              //               100}",
              //   style: priceStyle,
              // ),
              Spacer(),
              ElevatedButton(
                  style: elevatedButtonStyle,
                  onPressed: () async {
                    if (context.read<UserBloc>().defaultAddress == null) {
                      showSnack(
                          context: context,
                          message: "Please add address and try again");
                      return;
                    } else if (state.selectedPaymentMethod == null) {
                      showSnack(
                          context: context, message: 'Choose a payment option');
                      return;
                    } else if (state.selectedPaymentMethod?.paymentName! ==
                        'Razorpay') {
                      var options = {
                        'method': {
                          'netbanking': true,
                          'card': true,
                          'upi': true,
                          'wallet': true,
                        },
                        'key': 'rzp_test_zr5bOSAPfXPk5h',
                        'amount': state.getCheckoutResponseModel!.data!
                                .discountedPrice!
                                .round() *
                            100, //in the smallest currency sub-unit.
                        'name': 'user',
                        "entity": "order",
                        "status": "created",
                        "currency": "INR",
                        // 'order_id': 'order_EMBFqjDHEEn80l',
                        "notes": [], // Generate order_id using Orders API
                        'description': 'razorpay kicksapp',
                        'timeout': 60, // in seconds
                        'prefill': {
                          'contact': '9061885296',
                          'email': 'user@gmail.com'
                        }
                      };
                      paymentId = state.selectedPaymentMethod!.id!;
                      _razorpay.open(options);
                    } else {
                      context.read<OrdersBloc>().add(OrdersEvent.placeOrder(
                          placeOrderModel: PlaceOrderModel(
                              addressId:
                                  context.read<UserBloc>().defaultAddress!.id!,
                              couponId: context.read<CartBloc>().usedCouponId,
                              paymentId: state.selectedPaymentMethod!.id!)));
                    }
                  },
                  child: Text(
                    "Place Order",
                    style: roboto(fontWeight: FontWeight.w700, color: kWhite),
                  )),
            ],
          );
        },
      ),
    );
  }

  void _handlePaymentSuccess(PaymentSuccessResponse response) {
    Fluttertoast.showToast(
        msg: "Payment Success : ${response.paymentId}",
        toastLength: Toast.LENGTH_SHORT,
        timeInSecForIosWeb: 1,
        backgroundColor: kGreen,
        textColor: kWhite,
        fontSize: 16.0);
    context.read<OrdersBloc>().add(OrdersEvent.placeOrder(
        placeOrderModel: PlaceOrderModel(
            addressId: context.read<UserBloc>().defaultAddress!.id!,
            couponId: context.read<CartBloc>().usedCouponId,
            paymentId: paymentId)));
  }

  void _handlePaymentError(PaymentFailureResponse response) {
    Fluttertoast.showToast(
        msg: "Payment  Failed Tryagain",
        toastLength: Toast.LENGTH_SHORT,
        timeInSecForIosWeb: 1,
        backgroundColor: kRed,
        textColor: kWhite,
        fontSize: 16.0);
  }

  void _handleExternalWallet(ExternalWalletResponse response) {
    log('external handler');
  }
}
