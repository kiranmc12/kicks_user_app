import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kicks_sneakerapp/application/bussiness_logic/user/user_bloc.dart';
import 'package:kicks_sneakerapp/application/presentation/screens/user_details/widgets/change_details_widget.dart';
import 'package:kicks_sneakerapp/application/presentation/screens/user_details/widgets/passwor_edit_widget.dart';
import 'package:kicks_sneakerapp/application/presentation/utils/colors.dart';
import 'package:kicks_sneakerapp/application/presentation/utils/constants.dart';
import 'package:kicks_sneakerapp/application/presentation/utils/snackbar/showSnack.dart';
import 'package:kicks_sneakerapp/application/presentation/widgets/appbar_widget.dart';
import 'package:kicks_sneakerapp/domain/models/user_details/security/change_password_model/change_password_model.dart';

class ScreenUserDetails extends StatelessWidget {
  const ScreenUserDetails({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<UserBloc>().add(const UserEvent.getUserDetails());
    });
    return Scaffold(
      appBar: appbarWidget(title: "User Details"),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: SingleChildScrollView(
          child: BlocConsumer<UserBloc, UserState>(
            listener: (context, state) {
              if (state.passwordChanged) {
                showSnack(
                    context: context, 
                    message: "Password Changed Sucessfully",color: kGreen);
              }
            },
            builder: (context, state) {
              return Form(
                key: context.read<UserBloc>().changeDetailskey,
                child: Column(
                  children: [
                    const Divider(),
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
                        textInputType: TextInputType.phone,
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
                        kHeight5,
                        PasswordEditWidget(
                            text: "New Password",
                            controller:
                                context.read<UserBloc>().newPasswordController),
                        kHeight5,
                        PasswordEditWidget(
                            text: "Confirm Password",
                            controller: context
                                .read<UserBloc>()
                                .confirmPasswordController),
                        kHeight5,
                        Align(
                          alignment: Alignment.centerRight,
                          child: ElevatedButton(
                              onPressed: () {
                                context.read<UserBloc>().add(
                                    UserEvent.changePassword(
                                        changePassword: ChangePasswordModel(
                                            oldPassword:
                                                context
                                                    .read<UserBloc>()
                                                    .passwordController
                                                    .text
                                                    .trim(),
                                            password:
                                                context
                                                    .read<UserBloc>()
                                                    .newPasswordController
                                                    .text
                                                    .trim(),
                                            rePassword: context
                                                .read<UserBloc>()
                                                .confirmPasswordController
                                                .text
                                                .trim())));
                              },
                              style: elevatedButtonStyle,
                              child: const Text("Change Password")),
                        ),
                        const Divider()
                      ],
                    )
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
