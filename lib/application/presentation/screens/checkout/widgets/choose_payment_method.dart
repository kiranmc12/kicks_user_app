import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kicks_sneakerapp/application/bussiness_logic/orders/orders_bloc.dart';
import 'package:kicks_sneakerapp/application/presentation/utils/colors.dart';
import 'package:kicks_sneakerapp/application/presentation/utils/constants.dart';
import 'package:kicks_sneakerapp/application/presentation/utils/loadin_animation/loading_animation.dart';

class ChoosePaymentMethod extends StatelessWidget {
  const ChoosePaymentMethod({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Divider(),
        Text(
          "Payment method",
          style: roboto(fontWeight: FontWeight.w700),
        ),
        BlocBuilder<OrdersBloc, OrdersState>(
          builder: (context, state) {
            if (state.isLoading) {
              return const LoadingAnimation(width: 0.20);
            }
            if (state.getCheckoutResponseModel == null ||
                state.getCheckoutResponseModel!.data == null ||
                state.getCheckoutResponseModel!.data!.paymentMethods == null ||
                state.getCheckoutResponseModel!.data!.paymentMethods!.isEmpty) {
              return const Text('network error');
            }
            final paymentMethods =
                state.getCheckoutResponseModel!.data!.paymentMethods;
            return Wrap(
              children: List.generate(
                paymentMethods!.length, (int index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: ChoiceChip(
                    selectedColor: kGrey,
                    selectedShadowColor: kWhite,
                    label: Text(paymentMethods[index].paymentName!),
                    selected: paymentMethods[index].id != null &&
                        state.selectedPaymentMethod == paymentMethods[index],
                    onSelected: (bool selected) {
                      context.read<OrdersBloc>().add(
                          OrdersEvent.setPaymnetMethod(
                              paymentMethod: paymentMethods[index]));
                    },
                  ),
                );
              }).toList()
            );
          },
        )
      ],
    );
    
  }
}
