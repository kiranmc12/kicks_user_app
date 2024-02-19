import 'package:flutter/material.dart';
import 'package:kicks_sneakerapp/application/presentation/utils/colors.dart';
import 'package:kicks_sneakerapp/application/presentation/utils/constants.dart';

class PasswordEditWidget extends StatelessWidget {
  const PasswordEditWidget({
    super.key,
    required this.text,
    required this.controller,
  });

  final String text;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    bool isObscure = true;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: sWidth * 0.30,
          height: sWidth * 0.08,
          decoration: const BoxDecoration(
              color: kBlack, borderRadius: BorderRadius.all(kRadius5)),
          child: Center(
            child: Text(
              text,
              style: roboto(color: kWhite),
            ),
          ),
        ),
        kWidth10,
        SizedBox(
          height: sWidth * 0.13,
          width: sWidth * 0.60,
          child: TextFormField(
            obscureText: isObscure,
            controller: controller,
            onTap: () {
              isObscure = false;
            },
            onTapOutside: (_) {
              isObscure = true;
            },
            
            decoration: InputDecoration(
            
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(3.0),
                borderSide: const BorderSide(
                    color: kBlack), // Adjust the color as needed
              ),
              fillColor: kGrey,
              filled: true,
              labelStyle: const TextStyle(fontSize: 16.0),
              contentPadding: const EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 10,
              ),
            ),
            autovalidateMode: AutovalidateMode.onUserInteraction,
            validator: (value) {
              if (value!.isEmpty) {
                return 'fill this field';
              } else if (value.length < 8) {
                return 'password should contain at least 8 letters';
              } else {
                return null;
              }
            },
          ),
        )
      ],
    );
  }
}
