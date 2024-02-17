import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kicks_sneakerapp/application/bussiness_logic/user/user_bloc.dart';
import 'package:kicks_sneakerapp/application/presentation/utils/colors.dart';
import 'package:kicks_sneakerapp/application/presentation/utils/constants.dart';
import 'package:kicks_sneakerapp/application/presentation/utils/loadin_animation/loading_animation.dart';
import 'package:kicks_sneakerapp/application/presentation/utils/snackbar/showSnack.dart';

class AddressList extends StatelessWidget {
  const AddressList({super.key, this.fromCheckout = false});

  final bool fromCheckout;

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<UserBloc>().add(UserEvent.getAddress());
    });
    return BlocConsumer<UserBloc, UserState>(
      listener: (context, state) {
        if ((state.hasError || state.isDone) && state.message != null) {
          showSnack(
              context: context,
              message: state.message!,
              color: state.hasError ? kRed : kGreen);
        }
      },
      builder: (context, state) {
        if (state.isloading) {
          return const LoadingAnimation(width: 0.20);
        }
        if (state.hasError || state.address == null) {
          return Center(
            child: Text(
              "Nothing to show",
              style: roboto(),
            ),
          );
        }
        if (state.address!.isEmpty) {
          return const Text('Plese add the address first');
        }
        return SizedBox(
          height: sHeight * 0.45,
          child: ListView.separated(
              shrinkWrap: true,
              itemBuilder: (context, index) {
                if (index == state.address!.length) {
                  return SizedBox(
                    height: sHeight * 0.08,
                  );
                }
                print(state.address);
                final address = state.address![index];

                return ListTile(
                  leading: Text(
                    '${index + 1},',
                    style: roboto(),
                  ),
                  title: Text(
                    address.name!,
                    style: roboto(),
                  ),
                  subtitle: Text(
                    '${address.houseName!}, ${address.street!},\n${address.city!}, ${address.state},\npin : ${address.pin}\nph : ${address.phone}',
                    style: roboto(),
                  ),
                  onTap: () {
                    if (fromCheckout) {
                      context
                          .read<UserBloc>()
                          .add(UserEvent.setDefault(address: address));
                    }
                  },
                );
              },
              separatorBuilder: (context, index) => const Divider(),
              itemCount: state.address!.length + 1),
        );
      },
    );
  }
}
