import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kicks_sneakerapp/application/bussiness_logic/user/user_bloc.dart';
import 'package:kicks_sneakerapp/application/presentation/routes/routes.dart';
import 'package:kicks_sneakerapp/application/presentation/utils/colors.dart';
import 'package:kicks_sneakerapp/application/presentation/utils/constants.dart';

class UserDetailsHolderWidget extends StatelessWidget {
  const UserDetailsHolderWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<UserBloc>().add(const UserEvent.getUserDetails());
    });
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      decoration: const BoxDecoration(
        color: kGrey,
      ),
      height: 140,
      child: BlocBuilder<UserBloc, UserState>(
        // buildWhen: (previous, current) =>
        //     previous.userDetails != current.userDetails,
        builder: (context, state) {
          return Row(
            children: [
              CircleAvatar(
                radius: 40,
                backgroundColor: kBlack,
                child: Text(
                  state.userDetails != null
                      ? state.userDetails!.name!.substring(0, 2).toUpperCase()
                      : "AA",
                  style: tektur(color: kGrey, fontSize: 0.05),
                ),
              ),
              kWidth10,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    state.userDetails != null
                        ? state.userDetails!.name!.toUpperCase()
                        : "NAME",
                    style: roboto(),
                  ),
                  Text(
                    state.userDetails != null
                        ? state.userDetails!.email!
                        : "Email id",
                    style: roboto(),
                  ),
                  Text(
                    state.userDetails != null
                        ? state.userDetails!.phone!
                        : "Add phone number",
                    style: roboto(),
                  ),
                ],
              ),
              const Spacer(),
              IconButton(
                  onPressed: () {
                    Navigator.pushNamed(context, Routes.addressScreen);
                  },
                  icon: const Icon(
                    Icons.arrow_back_ios_new_outlined,
                    size: 15,
                    color: kBlack,
                  ))
            ],
          );
        },
      ),
    );
  }
}
