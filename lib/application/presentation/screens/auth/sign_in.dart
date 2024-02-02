import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kicks_sneakerapp/application/bussiness_logic/auth/auth_bloc.dart';
import 'package:kicks_sneakerapp/application/presentation/routes/routes.dart';

import 'package:kicks_sneakerapp/application/presentation/screens/auth/widgets/custom_textform_field.dart';
import 'package:kicks_sneakerapp/application/presentation/utils/colors.dart';
import 'package:kicks_sneakerapp/application/presentation/utils/constants.dart';
import 'package:kicks_sneakerapp/application/presentation/utils/snackbar/showSnack.dart';
import 'package:kicks_sneakerapp/domain/models/auth/phone_number_model/phone_number_model.dart';
import 'package:kicks_sneakerapp/domain/models/auth/sign_in_model/sign_in_model.dart';
import 'package:loading_indicator/loading_indicator.dart';

class ScreenSignIn extends StatefulWidget {
  const ScreenSignIn({super.key});

  @override
  State<ScreenSignIn> createState() => _ScreenSignInState();
}

class _ScreenSignInState extends State<ScreenSignIn> {
  bool loginWithOtp = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBlack,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: SizedBox(
            height: sHeight,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Form(
                  key: context.read<AuthBloc>().signInKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Kicks",
                        style: TextStyle(fontSize: 30.0, color: kWhite),
                      ),
                      kHeight100,
                      CustomTextFormFieldWidget(
                        controller: context.read<AuthBloc>().emailController,
                        label: 'Email',
                        keyboardType: TextInputType.emailAddress,
                        hintText: 'Enter valid email ',
                        icon: const Icon(Icons.email),
                      ),
                      kHeight30,
                      CustomTextFormFieldWidget(
                        controller:
                            context.read<AuthBloc>().passwordSignInController,
                        label: 'Password',
                        keyboardType: TextInputType.visiblePassword,
                        hintText: 'Enter valid password',
                        isPassword: true,
                      ),
                      kHeight30,
                      BlocConsumer<AuthBloc, AuthState>(
                        listener: (context, state) {
                          if (state.signInHasError) {
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                              dismissDirection: DismissDirection.horizontal,
                              content: Text(state.message!),
                              backgroundColor: kBlack,
                            ));
                          } else if (state.isLoggedIn) {
                            showSnack(
                                context: context,
                                message: 'user authenticated successfully',
                                color: kGreen);
                            Navigator.pushNamedAndRemoveUntil(
                                context, Routes.bottomNav, (route) => false);
                          } else if (state.signInResponseModel != null) {
                            Navigator.pushNamedAndRemoveUntil(
                                context, Routes.bottomNav, (route) => false);

                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                              content: Text(state.message!),
                              backgroundColor: kGreen,
                            ));
                          }
                        },
                        builder: (context, state) {
                          if (state.signInIsLoading) {
                            return SizedBox(
                              width: sWidth * 0.30,
                              child: const LoadingIndicator(
                                  indicatorType: Indicator.ballPulse),
                            );
                          } else {
                            return Align(
                              alignment: Alignment.centerRight,
                              child: ElevatedButton(
                                onPressed: () async {
                                  if (context
                                      .read<AuthBloc>()
                                      .signInKey
                                      .currentState!
                                      .validate()) {
                                    FocusScope.of(context).unfocus();
                                    context.read<AuthBloc>().add(
                                        AuthEvent.signIn(
                                            signInModel: SignInModel(
                                                email: context
                                                    .read<AuthBloc>()
                                                    .emailController
                                                    .text
                                                    .trim(),
                                                password: context
                                                    .read<AuthBloc>()
                                                    .passwordSignInController
                                                    .text
                                                    .trim())));
                                  }
                                },
                                style: ElevatedButton.styleFrom(
                                  side: const BorderSide(color: kWhite),
                                  fixedSize: Size(sWidth * 0.30, sWidth * 0.10),
                                  backgroundColor: kBlack,
                                  foregroundColor: kWhite,
                                  shape: const RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(kRadius5)),
                                ),
                                child: const Text("Sign In"),
                              ),
                            );
                          }
                        },
                      )
                    ],
                  ),
                ),
                const Center(
                  child: Text(
                    'or',
                    style: TextStyle(color: kWhite),
                  ),
                ),
                kHeight10,
                Align(
                  alignment: Alignment.center,
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        loginWithOtp = !loginWithOtp;
                      });
                    },
                    child: Text(
                      'login using otp',
                      style: textstyle(color: kWhite),
                    ),
                  ),
                ),
                kHeight20,
                Visibility(
                  visible: loginWithOtp,
                  child: Form(
                    key: context.read<AuthBloc>().phoneKey,
                    child: CustomTextFormFieldWidget(
                      controller: context.read<AuthBloc>().phonecontroller,
                      label: "Phone number",
                      keyboardType: TextInputType.number,
                      hintText: 'Enter valid phone number',
                    ),
                  ),
                ),
                Visibility(
                  visible: loginWithOtp,
                  child: BlocConsumer<AuthBloc, AuthState>(
                    listener: (context, state) {
                      if (state.otpHasError) {
                        showSnack(context: context, message: 'cannot send otp');
                      } else if (state.phoneNumberOtpResponseModel != null) {
                        Navigator.pushNamed(context, Routes.OtpScreen);
                      }
                    },
                    builder: (context, state) {
                      return TextButton(
                        onPressed: () {
                          context
                              .read<AuthBloc>()
                              .phoneKey
                              .currentState!
                              .validate();
                          {
                            FocusScope.of(context).unfocus();
                            context.read<AuthBloc>().add(AuthEvent.otpLogin(
                                PhoneNumberModel(
                                    phone: context
                                        .read<AuthBloc>()
                                        .phonecontroller
                                        .text
                                        .trim())));
                          }
                        },
                        child: const Text("Verify"),
                      );
                    },
                  ),
                ),
                const Divider(),
                Row(
                  children: [
                    const Text(
                      'Dont have an account? ',
                      style: TextStyle(color: kWhite),
                    ),
                    TextButton(
                      onPressed: () {
                        context.read<AuthBloc>().emailController.clear();
                        context
                            .read<AuthBloc>()
                            .passwordSignInController
                            .clear();
                        context.read<AuthBloc>().phonecontroller.clear();
                        Navigator.pushReplacementNamed(context, Routes.signUp);
                      },
                      child: const Text('Sign-up'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
