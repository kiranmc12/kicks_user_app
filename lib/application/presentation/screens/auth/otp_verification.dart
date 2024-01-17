import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class ScreenOtpVerification extends StatelessWidget {
  const ScreenOtpVerification({super.key});

  @override
  Widget build(BuildContext context) {
    return  Pinput(
    onCompleted: (pin) => print(pin),
  );;
  }
}