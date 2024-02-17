import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kicks_sneakerapp/application/bussiness_logic/user/user_bloc.dart';
import 'package:kicks_sneakerapp/application/presentation/utils/colors.dart';
import 'package:kicks_sneakerapp/application/presentation/utils/constants.dart';

class DetailAdderTextField extends StatelessWidget {
  const DetailAdderTextField(
      {super.key,
      required this.text,
      required this.controller,
      this.maxLength,
      this.keyboardType = TextInputType.text});

  final String text;
  final TextEditingController controller;
  final int? maxLength;
  final TextInputType? keyboardType;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          margin: const EdgeInsets.only(top: 20),
          width: sWidth * 0.20,
          height: sWidth * 0.1,
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
        Container(
          margin: const EdgeInsets.only(top: 20),
          height: sWidth * 0.08,
          width: sWidth * 0.65,
          decoration: const BoxDecoration(
              color: kGrey, borderRadius: BorderRadius.all(kRadius5)),
          child: TextFormField(
            autovalidateMode: AutovalidateMode.onUserInteraction,

            keyboardType: keyboardType,
            controller: controller,
            decoration: const InputDecoration(fillColor: kGrey),

            // maxLength: maxLength,
            validator: (value) {
              if (value!.isEmpty) {
                return 'Fill this field';
              }
              if (controller == context.read<UserBloc>().phoneController &&
                  value.length != 10) {
                return 'enter valid phone number';
              }
              if (controller == context.read<UserBloc>().pinController &&
                  value.length != 6) {
                return 'enter valid pin number';
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
