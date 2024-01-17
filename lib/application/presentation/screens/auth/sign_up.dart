import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kicks_sneakerapp/application/bussiness_logic/bloc/auth_bloc.dart';
import 'package:kicks_sneakerapp/application/presentation/routes/routes.dart';
import 'package:kicks_sneakerapp/application/presentation/screens/auth/sign_in.dart';
import 'package:kicks_sneakerapp/application/presentation/screens/auth/widgets/custom_textform_field.dart';
import 'package:kicks_sneakerapp/application/presentation/utils/colors.dart';
import 'package:kicks_sneakerapp/application/presentation/utils/constants.dart';
import 'package:kicks_sneakerapp/application/presentation/utils/snackbar/showSnack.dart';
import 'package:kicks_sneakerapp/domain/models/auth/sign_up_model/sign_up_model.dart';
import 'package:loading_indicator/loading_indicator.dart';

class ScreenSignUp extends StatelessWidget {
  const ScreenSignUp({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

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
                        isPassword: false,
                        label: 'Username',
                        keyboardType: TextInputType.name,
                        hintText: 'Enter username',
                        controller: context.read<AuthBloc>().usernameController,
                      ),
                      kHeight20,
                      CustomTextFormFieldWidget(
                        isPassword: false,
                        label: 'Email',
                        keyboardType: TextInputType.emailAddress,
                        hintText: 'Enter valid email',
                        icon: const Icon(Icons.email),
                        controller: context.read<AuthBloc>().emailController,
                      ),
                      kHeight20,
                      CustomTextFormFieldWidget(
                        isPassword: false,
                        label: 'Phone number',
                        keyboardType: TextInputType.phone,
                        hintText: 'Enter valid phone number',
                        icon: const Icon(Icons.phone),
                        controller: context.read<AuthBloc>().phonecontroller,
                      ),
                      kHeight20,
                      CustomTextFormFieldWidget(
                        label: 'Password',
                        keyboardType: TextInputType.visiblePassword,
                        hintText: 'Enter valid password',
                        isPassword: true,
                        icon: const Icon(Icons.remove_red_eye),
                        controller:
                            context.read<AuthBloc>().passwordSignInController,
                      ),
                      kHeight20,
                      CustomTextFormFieldWidget(
                        label: 'Confirm password',
                        keyboardType: TextInputType.visiblePassword,
                        hintText: 'Re-enter password',
                        icon: const Icon(Icons.remove_red_eye),
                        isPassword: true,
                        controller:
                            context.read<AuthBloc>().confirmPasswordController,
                      ),
                      kHeight20,
                      BlocConsumer<AuthBloc, AuthState>(
                        listener: (context, state) {
                          if (state.signUpHasError) {
                            showSnack(
                                context: context,
                                message: state.message!,
                                color: kRed);
                          } else if (state.signUpResponseModel != null) {
                            Navigator.pushNamed(context, Routes.signInPage);
                          }
                        },
                        builder: (context, state) {
                          if (state.signUpIsLoading) {
                            return LoadingIndicator(
                                indicatorType: Indicator.ballBeat);
                          }
                          return Align(
                            alignment: Alignment.centerRight,
                            child: ElevatedButton(
                              onPressed: () {
                                if (context
                                    .read<AuthBloc>()
                                    .signUpKey
                                    .currentState!
                                    .validate()) {
                                  FocusScope.of(context).unfocus();
                                  context.read<AuthBloc>().add(AuthEvent.signUp(
                                      signUpModel: SignUpModel(
                                          name: context
                                              .read<AuthBloc>()
                                              .usernameController
                                              .text
                                              .trim(),
                                          email: context
                                              .read<AuthBloc>()
                                              .emailController
                                              .text
                                              .trim(),
                                          phone: context
                                              .read<AuthBloc>()
                                              .phonecontroller
                                              .text
                                              .trim(),
                                          password: context
                                              .read<AuthBloc>()
                                              .passwordController
                                              .text
                                              .trim(),
                                          confirmpassword: context
                                              .read<AuthBloc>()
                                              .confirmPasswordController
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
                              child: const Text("Sign Up"),
                            ),
                          );
                        },
                      )
                    ],
                  ),
                ),
                const Divider(),
                Row(
                  children: [
                    const Text(
                      'Already have an account? ',
                      style: TextStyle(color: kWhite),
                    ),
                    TextButton(
                      onPressed: () {
                        context.read<AuthBloc>().passwordController.clear();
                        context
                            .read<AuthBloc>()
                            .confirmPasswordController
                            .clear();
                        context.read<AuthBloc>().usernameController.clear();
                        context.read<AuthBloc>().phonecontroller.clear();
                        context.read<AuthBloc>().emailController.clear();
                        Navigator.popAndPushNamed(context, Routes.signInPage);
                      },
                      child: const Text('Sign-In'),
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
