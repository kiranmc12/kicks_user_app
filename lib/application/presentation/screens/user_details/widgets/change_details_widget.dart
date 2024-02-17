import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kicks_sneakerapp/application/bussiness_logic/user/user_bloc.dart';
import 'package:kicks_sneakerapp/application/presentation/utils/colors.dart';
import 'package:kicks_sneakerapp/application/presentation/utils/constants.dart';
import 'package:kicks_sneakerapp/application/presentation/utils/snackbar/showSnack.dart';
import 'package:kicks_sneakerapp/application/presentation/utils/validator_functions/validators.dart';
import 'package:kicks_sneakerapp/domain/models/user_details/edit_details/edit_email/edit_email.dart';
import 'package:kicks_sneakerapp/domain/models/user_details/edit_details/edit_name/edit_name.dart';
import 'package:kicks_sneakerapp/domain/models/user_details/edit_details/edit_phone/edit_phone.dart';

class ChangeDetailWidget extends StatelessWidget {
  const ChangeDetailWidget(
      {super.key,
      required this.detail,
      required this.controller,
      required this.hintValue});

  final String detail;
  final String hintValue;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Change $detail'),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: sWidth * 0.20,
              height: sWidth * 0.08,
              decoration: const BoxDecoration(
                  color: kBlack, borderRadius: BorderRadius.all(kRadius5)),
              child: Center(
                child: Text(
                  detail,
                  style: roboto(color: kWhite),
                ),
              ),
            ),
            kWidth10,
            Container(
              height: sWidth * 0.08,
              width: sWidth * 0.65,
              decoration: const BoxDecoration(
                  color: kGrey, borderRadius: BorderRadius.all(kRadius5)),
              child: BlocConsumer<UserBloc, UserState>(
                listener: (context, state) {
                  if (state.isDone && detail == "Name") {
                    showSnack(
                        context: context,
                        message: state.message!,
                        color: kGreen);
                  }
                },
                builder: (context, state) {
                  return TextFormField(
                    controller: controller,
                    decoration: InputDecoration(hintText: hintValue),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'enter $detail';
                      } else if (controller ==
                              context.read<UserBloc>().changeEmailController &&
                          isValidEmail(value)) {
                        return 'enter valid email';
                      } else if (controller ==
                              context.read<UserBloc>().changeNameController &&
                          isAlphabet(value)) {
                        return 'enter valid name';
                      } else if (controller ==
                              context.read<UserBloc>().changePhoneController &&
                          isValidPhoneNumber(value)) {
                        return 'enter valid phone';
                      } else {
                        return null;
                      }
                    },
                  );
                },
              ),
            )
          ],
        ),
        Align(
            alignment: Alignment.centerRight,
            child: ElevatedButton(
              onPressed: () {
                if (detail == 'Name') {
                  context.read<UserBloc>().add(UserEvent.changeName(
                      changeName: EditName(
                          name: context
                              .read<UserBloc>()
                              .changeNameController
                              .text
                              .trim())));
                } else if (detail == 'Email') {
                  context.read<UserBloc>().add(UserEvent.changeEmail(
                      changeEmail: EditEmail(
                          email: context
                              .read<UserBloc>()
                              .changeEmailController
                              .text
                              .trim())));
                } else if (detail == 'Phone') {
                  context.read<UserBloc>().add(UserEvent.changePhone(
                      changePhone: EditPhone(
                          phone: context
                              .read<UserBloc>()
                              .changePhoneController
                              .text
                              .trim())));
                }
              },
              style: elevatedButtonStyle,
              child: Text('Change $detail'),
            )),
        const Divider()
      ],
    );
  }
}
