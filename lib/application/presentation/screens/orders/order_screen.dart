import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kicks_sneakerapp/application/bussiness_logic/orders/orders_bloc.dart';
import 'package:kicks_sneakerapp/application/presentation/routes/routes.dart';
import 'package:kicks_sneakerapp/application/presentation/screens/orders/widgets/my_orders_list_tile.dart';
import 'package:kicks_sneakerapp/application/presentation/utils/constants.dart';
import 'package:kicks_sneakerapp/application/presentation/utils/loadin_animation/loading_animation.dart';
import 'package:kicks_sneakerapp/application/presentation/widgets/appbar_widget.dart';

class ScreenMyOrders extends StatelessWidget {
  const ScreenMyOrders({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: appbarWidget(title: 'My Orders'),
         body: const MyOrderBody());
  }
}

class MyOrderBody extends StatelessWidget {
  const MyOrderBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<OrdersBloc>().add(const OrdersEvent.getOrders());
    });
    return SafeArea(
        child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: BlocBuilder<OrdersBloc, OrdersState>(
        builder: (context, state) {
          if (state.isLoading) {
            return const LoadingAnimation(width: 0.20);
          }
          if (state.orders!.isEmpty) {
            return Center(
                child: Text(
              "No orders yet",
              style: tektur(),
            ));
          }
          return ListView.builder(
              itemCount: state.orders!.length,
              itemBuilder: (context, index) => InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, Routes.orderDetailScreen,
                        arguments: state.orders![index].orderDetails!.id);
                  },
                  child:
                       MyOrderListTile(data: state.orders![index])
                      ));
        },
      ),
    ));
  }
}
