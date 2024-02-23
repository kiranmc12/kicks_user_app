import 'package:flutter/material.dart';
import 'package:kicks_sneakerapp/application/presentation/utils/colors.dart';
import 'package:kicks_sneakerapp/application/presentation/utils/constants.dart';

Future<dynamic> customShowDialoge(
    {required BuildContext context, required Function onPress}) {
  return showDialog(
      context: context,
      builder: (context) => AlertDialog(
            actions: [
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: kBlack, foregroundColor: kWhite),
                child: Text(
                  'NO',
                  style: roboto(color: kWhite),
                ),
              ),
              kWidth20,
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                  onPress();
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: kBlack, foregroundColor: kWhite),
                child: Text(
                  'YES',
                  style: roboto(color: kWhite),
                ),
              )
            ],
            title: Text(
              'Are you sure?',
              style: roboto(fontSize: 0.06),
            ),
          ));
}
