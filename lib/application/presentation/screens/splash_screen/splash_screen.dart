import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kicks_sneakerapp/application/bussiness_logic/auth/auth_bloc.dart';
import 'package:kicks_sneakerapp/application/presentation/routes/routes.dart';
import 'package:kicks_sneakerapp/application/presentation/utils/colors.dart';
import 'package:kicks_sneakerapp/application/presentation/utils/constants.dart';

class ScreenSplash extends StatelessWidget {
  const ScreenSplash({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 1), () {
      context.read<AuthBloc>().add(AuthEvent.loggedIn());
    });
    return Scaffold(
      backgroundColor: kBlack,
      body: BlocListener<AuthBloc, AuthState>(
        listener: (context, state) {
          if (state.isLoggedIn) {
            Navigator.popAndPushNamed(context, Routes.bottomNav);
          } else {
            Navigator.popAndPushNamed(context, Routes.signInPage);
          }
        },
        child: const Center(
          child: Text(
            "Kicks",
            style: TextStyle(
              color: kWhite,
              fontSize: 35.0,
            ),
          ),
        ),
      ),
    );
  }
}
