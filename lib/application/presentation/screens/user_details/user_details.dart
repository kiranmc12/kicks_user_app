import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kicks_sneakerapp/application/bussiness_logic/user/user_bloc.dart';
import 'package:kicks_sneakerapp/application/presentation/screens/user_details/widgets/change_details_widget.dart';
import 'package:kicks_sneakerapp/application/presentation/screens/user_details/widgets/passwor_edit_widget.dart';
import 'package:kicks_sneakerapp/application/presentation/utils/constants.dart';
import 'package:kicks_sneakerapp/application/presentation/widgets/appbar_widget.dart';
import 'package:kicks_sneakerapp/domain/repositories/user_repository.dart';

class ScreenUserDetails extends StatelessWidget {
  const ScreenUserDetails({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<UserBloc>().add(UserEvent.getUserDetails());
    });
    return Scaffold(
      appBar: appbarWidget(title: "User Details"),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: SingleChildScrollView(
          child: BlocConsumer<UserBloc, UserState>(
            listener: (context, state) {
              // TODO: implement listener
            },
            builder: (context, state) {
              return Column(
                children: [
                  Divider(),
                  ChangeDetailWidget(
                    detail: 'Name',
                    controller: context.read<UserBloc>().changeNameController,
                    hintValue: state.userDetails!.name!,
                  ),
                  ChangeDetailWidget(
                      detail: 'Email',
                      hintValue: state.userDetails!.email!,
                      controller:
                          context.read<UserBloc>().changeEmailController),
                  ChangeDetailWidget(
                      detail: 'Phone',
                      hintValue: state.userDetails!.phone!,
                      controller:
                          context.read<UserBloc>().changePhoneController),
                  Column(
                    children: [
                      Text(
                        'Change Password',
                        style: roboto(),
                      ),
                      PasswordEditWidget(
                          text: 'Password',
                          controller:
                              context.read<UserBloc>().passwordController),
                      kHeight10,
                      PasswordEditWidget(
                          text: "New Password",
                          controller:
                              context.read<UserBloc>().newPasswordController),
                      kHeight10,
                      PasswordEditWidget(
                          text: "Confirm Password",
                          controller: context
                              .read<UserBloc>()
                              .confirmPasswordController),
                      kHeight10,
                      Align(
                        alignment: Alignment.centerRight,
                        child: ElevatedButton(
                            onPressed: () {},
                            style: elevatedButtonStyle,
                            child: Text("Change Password")),
                      ),
                      Divider()
                    ],
                  )
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
