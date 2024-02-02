import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kicks_sneakerapp/application/bussiness_logic/auth/auth_bloc.dart';
import 'package:kicks_sneakerapp/application/presentation/routes/routes.dart';
import 'package:kicks_sneakerapp/application/presentation/utils/colors.dart';
import 'package:kicks_sneakerapp/application/presentation/utils/constants.dart';
import 'package:kicks_sneakerapp/application/presentation/utils/snackbar/showSnack.dart';
import 'package:kicks_sneakerapp/domain/models/auth/verify_otp_model/verify_otp_model.dart';
import 'package:loading_indicator/loading_indicator.dart';
import 'package:pinput/pinput.dart';

class ScreenOtpVerification extends StatelessWidget {
  ScreenOtpVerification({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhite,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              kHeight30,
              const Text(
                "Verification",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              kHeight20,
              Text(
                  "Enter the code send to ${context.read<AuthBloc>().phonecontroller.text.trim()}"),
              kHeight50,
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Pinput(
                  controller: context.read<AuthBloc>().otpcontroller,
                  length: 6,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  defaultPinTheme: PinTheme(
                      height: 40,
                      width: 40,
                      textStyle: GoogleFonts.kronaOne(fontSize: 0.040 * sWidth),
                      decoration: BoxDecoration(
                          color: kWhite,
                          shape: BoxShape.rectangle,
                          border: Border.all(color: kBlack))),
                ),
              ),
              BlocConsumer<AuthBloc, AuthState>(
                listener: (context, state) {
                  if (state.verifyOtpHasError) {
                    showSnack(context: context, message: state.message!);
                  } else if (state.verifyOtpResponseModel != null) {
                    Navigator.pushNamedAndRemoveUntil(
                        context, Routes.bottomNav, (route) => false);
                  }
                },
                builder: (context, state) {
                  if (state.otpIsLoading) {
                    return const SizedBox(
                        width: 0.30,
                        child: LoadingIndicator(
                            indicatorType: Indicator.ballBeat));
                  } else {
                    return Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                          onPressed: () {
                            context.read<AuthBloc>().add(AuthEvent.verifyOtp(
                                VerifyOtpModel(
                                    code: context
                                        .read<AuthBloc>()
                                        .otpcontroller
                                        .text
                                        .trim(),
                                    phone: context
                                        .read<AuthBloc>()
                                        .phonecontroller
                                        .text
                                        .trim())));
                          },
                          child: Text(
                            "Submit",
                            style: textstyle(
                                color: kBlack, fontWeight: FontWeight.w500),
                          )),
                    );
                  }
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
