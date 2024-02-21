import 'package:flutter/material.dart';


class NavigationService {
  static final GlobalKey<ScaffoldMessengerState> scaffoldMessengerKey =
      GlobalKey<ScaffoldMessengerState>();
  static final GlobalKey<NavigatorState> navigatorKey =
      GlobalKey<NavigatorState>();

  static GlobalKey<ScaffoldMessengerState> get getScaffoldMessengerKey =>
      scaffoldMessengerKey;

  static GlobalKey<NavigatorState> get getNavigatorKey => navigatorKey;

  static void showSnackBar(String message) {
    scaffoldMessengerKey.currentState?.showSnackBar(SnackBar(
      content: Text(message),
    ));
  }

  // You can add other navigation-related methods here
}
