import 'package:flutter/material.dart';
import 'package:kicks_sneakerapp/application/presentation/routes/routes.dart';
import 'package:kicks_sneakerapp/application/presentation/screens/auth/otp_verification.dart';
import 'package:kicks_sneakerapp/application/presentation/screens/bottom_nav/bottom_nav.dart';
import 'package:kicks_sneakerapp/application/presentation/screens/auth/sign_in.dart';
import 'package:kicks_sneakerapp/application/presentation/screens/auth/sign_up.dart';
import 'package:kicks_sneakerapp/application/presentation/screens/splash_screen/splash_screen.dart';

class RouteGenerator {
  Route onGenerateRoute(RouteSettings settings) {
    final arguments = settings.arguments;
    switch (settings.name) {
      case Routes.initial:
        return MaterialPageRoute(builder: (ctx) => const ScreenSplash());
      case Routes.signInPage:
        return MaterialPageRoute(builder: (ctx) => const ScreenSignIn());
      case Routes.signUp:
        return MaterialPageRoute(builder: (ctx) => const ScreenSignUp());
      case Routes.bottomNav:
        return MaterialPageRoute(builder: (ctx) => ScreenBottombar());
      case Routes.OtpScreen:
        return MaterialPageRoute(builder: (ctx) => ScreenOtpVerification());
      default:
        return _errorScreen();
    }
  }

  Route _errorScreen() {
    return MaterialPageRoute(builder: (ctx) {
      return Scaffold(
        appBar: AppBar(
          title: const Text("Error"),
        ),
        body: const Center(
          child: Text("Error while navigating"),
        ),
      );
    });
  }
}
