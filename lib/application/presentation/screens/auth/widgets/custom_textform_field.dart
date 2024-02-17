import 'package:flutter/material.dart';

import 'package:kicks_sneakerapp/application/presentation/utils/colors.dart';

import 'package:kicks_sneakerapp/application/presentation/utils/validator_functions/validators.dart';

class CustomTextFormFieldWidget extends StatefulWidget {
  final Icon? icon;
  final TextEditingController controller;
  final String label;
  final TextInputType keyboardType;
  final bool isPassword;
  final String hintText;

  const CustomTextFormFieldWidget({
    super.key,
    required this.label,
    required this.keyboardType,
    this.isPassword = false,
    required this.hintText,
    this.icon,
    required this.controller,
  });

  @override
  State<CustomTextFormFieldWidget> createState() =>
      _CustomTextFormFieldWidgetState();
}

class _CustomTextFormFieldWidgetState extends State<CustomTextFormFieldWidget> {
  bool obscure = true;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.label,
          style: const TextStyle(color: kWhite),
        ),
        TextFormField(
          controller: widget.controller,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          validator: (value) {
            if (widget.isPassword && value!.isEmpty) {
              return 'Enter password';
            } else if (widget.isPassword && value!.length < 8) {
              return 'Password must contain 8 characters';
            } else if (!widget.isPassword || value!.isEmpty) {
              if (widget.keyboardType == TextInputType.emailAddress) {
                return isValidEmail(value!) ? null : 'Enter valid email';
              } else if (widget.keyboardType == TextInputType.text) {
                return isAlphabet(value!)
                    ? null
                    : 'Enter valid alphabet characters';
              } else if (widget.keyboardType == TextInputType.number &&
                  value!.length != 10) {
                return 'Enter valid phone number';
              } else if (widget.keyboardType == TextInputType.name &&
                  value!.length < 4) {
                return "Enter valid username";
              }
            }
            return null;
          },
          keyboardType: widget.keyboardType,
          obscureText: widget.isPassword ? obscure : false,
          decoration: InputDecoration(
              hintText: widget.hintText,
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
              suffixIcon: widget.isPassword
                  ? IconButton(
                      icon: Icon(
                        obscure
                            ? Icons.remove_red_eye
                            : Icons.remove_red_eye_outlined,
                        color: kBlack,
                      ),
                      onPressed: () {
                        setState(() {
                          obscure = !obscure;
                        });
                      },
                    )
                  : widget.icon),
        )
      ],
    );
  }
}
