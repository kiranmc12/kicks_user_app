import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kicks_sneakerapp/application/bussiness_logic/orders/orders_bloc.dart';
import 'package:kicks_sneakerapp/application/presentation/screens/orders/widgets/order_detail_item_tile.dart';
import 'package:kicks_sneakerapp/application/presentation/screens/orders/widgets/order_tracker.dart';
import 'package:kicks_sneakerapp/application/presentation/utils/colors.dart';
import 'package:kicks_sneakerapp/application/presentation/utils/constants.dart';
import 'package:kicks_sneakerapp/application/presentation/utils/loadin_animation/loading_animation.dart';
import 'package:kicks_sneakerapp/application/presentation/utils/snackbar/showSnack.dart';

class OrderDetailViews extends StatelessWidget {
  const OrderDetailViews({super.key, required this.orderId});
  final int orderId;

  get separatorBuilder => null;

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context
          .read<OrdersBloc>()
          .add(OrdersEvent.getOrderDetails(orderId: orderId));
    });
    return SingleChildScrollView(
      child: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(25.0),
        child: BlocConsumer<OrdersBloc, OrdersState>(
          listener: (context, state) {
            if (state.hasError || state.isDone) {
              showSnack(
                  context: context,
                  message: state.message!,
                  color: state.hasError ? kRed : kGreen);
            }
          },
          builder: (context, state) {
            if (state.isLoading) {
              return const LoadingAnimation(
                width: 0.02,
              );
            }
            if (state.getOrderDetailsResponseModel == null ||
                state.getOrderDetailsResponseModel!.data == null) {
              return const Center(
                child: Text("No data"),
              );
            }
            final data = state.getOrderDetailsResponseModel!.data;

            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                OrderTracker(status: data!.orderStatus!),
                const Divider(),
                data.products != null || data.products!.isNotEmpty
                    ? ListView.separated(
                      shrinkWrap: true,
                        itemBuilder: (context, index) =>
                            OrderDetailItemTile(product: data.products![index]),
                        separatorBuilder: (context,index)=>const Divider(),
                        itemCount: data.products!.length)
                    : kHeight5,
                const Divider(),
                Text(
                  "TOTAL AMOUNT : ${data.totalAmount}",
                  style: roboto(fontWeight: FontWeight.w700),
                ),
                kHeight10,
                Text(
                  data.orderStatus!,
                  style: roboto(fontWeight: FontWeight.w700),
                ),
                kHeight10,
                Text(
                  data.address!,
                  style: roboto(fontWeight: FontWeight.w700),
                ),
                kHeight10,
                Row(children: [
                  const Text('phone : '),
                  Text(
                    data.phone!,
                    style: const TextStyle(fontWeight: FontWeight.w600),
                  ),
                ]),
                TextButton(
                    onPressed: () {
                      data.orderStatus == 'PENDING'
                          ? context
                              .read<OrdersBloc>()
                              .add(OrdersEvent.cancelOrder(orderId: orderId))
                          : data.orderStatus! == "DELIVERED"
                              ? context.read<OrdersBloc>().add(
                                  OrdersEvent.returnOrder(orderId: orderId))
                              : '';
                    },
                    child: Text(
                      data.orderStatus! == 'PENDING'
                          ? 'Cancel Order'
                          : data.orderStatus! == "DELIVERED"
                              ? 'Return Order'
                              : '',
                      style: roboto (color: kRed),
                    ))
              ],
            );
          },
        ),
      )),
    );
  }
}
