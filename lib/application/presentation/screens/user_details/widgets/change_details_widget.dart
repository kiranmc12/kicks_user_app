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
import 'package:pinput/pinput.dart';

class ChangeDetailWidget extends StatelessWidget {
  const ChangeDetailWidget({
    Key? key,
    required this.detail,
    required this.controller,
    this.textInputType = TextInputType.name,
  }) : super(key: key);

  final String detail;
  final TextInputType textInputType;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Change $detail'),
        kHeight5,
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
            SizedBox(
                height: sWidth * 0.13,
                width: sWidth * 0.65,
                child: TextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  controller: controller,
                  keyboardType: textInputType,
                  decoration: const InputDecoration(
                    fillColor: kGrey,
                    filled: true,
                    contentPadding: EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 10,
                    ),
                  ),
                )),
          ],
        ),
        Align(
          alignment: Alignment.centerRight,
          child: ElevatedButton(
            onPressed: () {
              // Validate the field
              bool isValid;
              if (detail == 'Name') {
                isValid = isAlphabet(controller.text);
              } else if (detail == 'Email') {
                isValid = isValidEmail(controller.text);
              } else if (detail == 'Phone') {
                isValid = isValidPhoneNumber(controller.text);
              } else {
                isValid = false;
              }

              if (!isValid) {
                showSnack(
                  context: context,
                  message: 'Invalid $detail',
                  color: kRed,
                );
                return;
              }

              if (detail == 'Name') {
                context.read<UserBloc>().add(UserEvent.changeName(
                    changeName: EditName(name: controller.text.trim())));
              } else if (detail == 'Email') {
                context.read<UserBloc>().add(UserEvent.changeEmail(
                    changeEmail: EditEmail(email: controller.text.trim())));
              } else if (detail == 'Phone') {
                context.read<UserBloc>().add(UserEvent.changePhone(
                    changePhone: EditPhone(phone: controller.text.trim())));
              }
            },
            style: elevatedButtonStyle,
            child: Text('Change $detail'),
          ),
        ),
        const Divider(),
      ],
    );
  }
}
