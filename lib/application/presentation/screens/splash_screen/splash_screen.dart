import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kicks_sneakerapp/application/bussiness_logic/auth/auth_bloc.dart';
import 'package:kicks_sneakerapp/application/bussiness_logic/network/network_bloc.dart';
import 'package:kicks_sneakerapp/application/presentation/routes/routes.dart';
import 'package:kicks_sneakerapp/application/presentation/utils/colors.dart';
import 'package:kicks_sneakerapp/application/presentation/utils/constants.dart';

class ScreenSplash extends StatelessWidget {
  const ScreenSplash({super.key});

  @override
  Widget build(BuildContext context) {
    sizeFinder(context);

    // Timer(const Duration(seconds: 1), () {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<AuthBloc>().add(AuthEvent.loggedIn());
    });
    // });
    return Scaffold(
      backgroundColor: kBlack,
      body: BlocBuilder<NetworkBloc, NetworkState>(
        builder: (context, connection) {
           if (connection is NetworkFailure) {
              return const Text("No Internet Connection");
            } else if (connection is NetworkSuccess) {
              return const Text("You're Connected to Internet");
            } 
          return BlocListener<AuthBloc, AuthState>(
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
          );
        },
      ),
    );
  }
}
