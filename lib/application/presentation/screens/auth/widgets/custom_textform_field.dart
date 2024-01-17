import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kicks_sneakerapp/application/bussiness_logic/bloc/auth_bloc.dart';
import 'package:kicks_sneakerapp/application/presentation/utils/colors.dart';

import 'package:kicks_sneakerapp/application/presentation/utils/validator_functions/validators.dart';

class CustomTextFormFieldWidget extends StatelessWidget {
  final Icon? icon;
  final TextEditingController controller;
  final String label;
  final TextInputType keyboardType;
  final bool isPassword;
  final String hintText;

  const CustomTextFormFieldWidget({
    Key? key,
    required this.label,
    required this.keyboardType,
    this.isPassword = false,
    required this.hintText,
    this.icon,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(color: kWhite),
        ),
        BlocBuilder<AuthBloc, AuthState>(
          builder: (context, state) {
            return TextFormField(
              autovalidateMode: AutovalidateMode.onUserInteraction,
              validator: (value) {
                if (isPassword && value!.isEmpty) {
                  return 'Enter password';
                } else if (isPassword && value!.length < 8) {
                  return 'Password must contain 8 characters';
                } else if (isPassword &&
                    context
                            .read<AuthBloc>()
                            .passwordSignInController
                            .text
                            .trim()
                            .length >
                        7 &&
                    context
                            .read<AuthBloc>()
                            .passwordSignInController
                            .text
                            .trim() !=
                        context
                            .read<AuthBloc>()
                            .confirmPasswordController
                            .text
                            .trim()) {
                  return 'password dosen\'t match';
                } else if (!isPassword || value!.isEmpty) {
                  if (keyboardType == TextInputType.emailAddress) {
                    return isValidEmail(value!) ? null : 'Enter valid email';
                  } else if (keyboardType == TextInputType.text) {
                    return isAlphabet(value!)
                        ? null
                        : 'Enter valid alphabet characters';
                  } else if (keyboardType == TextInputType.phone) {
                    return isValidPhoneNumber(value!)
                        ? null
                        : 'Enter valid phone number';
                  } else if (keyboardType == TextInputType.name && value!.length<4) {
                    return "Enter valid username";
                  }
                }
                return null;
              },
              keyboardType: keyboardType,
              decoration: InputDecoration(
                  hintText: hintText,
                  errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: const BorderSide(
                        color: Colors.red), // Adjust the color as needed
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: const BorderSide(
                        color: Colors.blue), // Adjust the color as needed
                  ),
                  labelStyle: const TextStyle(fontSize: 16.0),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  contentPadding: const EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 10,
                  ),
                  fillColor: kWhite,
                  filled: true,
                  suffixIcon: isPassword
                      ? IconButton(
                          icon: Icon(
                            state.isObscure
                                ? Icons.remove_red_eye
                                : Icons.remove_red_eye_outlined,
                            color: kBlack,
                          ),
                          onPressed: () {
                            context
                                .read<AuthBloc>()
                                .add( AuthEvent.obscure());
                          },
                        )
                      : icon),
            );
          },
        )
      ],
    );
  }
}
