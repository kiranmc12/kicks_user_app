import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kicks_sneakerapp/application/bussiness_logic/user/user_bloc.dart';
import 'package:kicks_sneakerapp/application/presentation/routes/routes.dart';
import 'package:kicks_sneakerapp/application/presentation/screens/address/widgets/address_list.dart';
import 'package:kicks_sneakerapp/application/presentation/utils/constants.dart';

class CheckoutAddressTile extends StatelessWidget {
  const CheckoutAddressTile({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserBloc, UserState>(
      builder: (context, state) {
        final defaultAddress = context.read<UserBloc>().defaultAddress;
        return Column(
          children: [
            SizedBox(
              width: sWidth,
              child: Card(
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      defaultAddress == null
                          ? Text(
                              ' Add Address',
                              style: roboto(),
                            )
                          : Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text(
                                  'Address',
                                  style: TextStyle(fontWeight: FontWeight.w700),
                                ),
                                kHeight5,
                                Text(
                                    '${defaultAddress.name}\n${defaultAddress.houseName},\n${defaultAddress.street},\n${defaultAddress.city},\n${defaultAddress.state} \npin: ${defaultAddress.pin}'),
                              ],
                            ),
                      Spacer(),
                      Column(
                        children: [
                          IconButton(
                              onPressed: () {
                                Navigator.pushNamed(
                                    context, Routes.addressScreen);
                              },
                              icon: Icon(Icons.add)),
                          IconButton(
                              onPressed: () {
                                context
                                    .read<UserBloc>()
                                    .add(const UserEvent.showList());
                              },
                              icon: Icon(Icons.arrow_drop_down_circle_sharp))
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            Visibility(
              visible: state.showList,
              child: SizedBox(
                height: sWidth*0.60,
                child: const AddressList(fromCheckout: true)),
            )
          ],
        );
      },
    );
  }
}
