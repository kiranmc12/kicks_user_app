import 'package:flutter/material.dart';


class NavigationService {


  // Your existing navigatorKey
  static final GlobalKey<NavigatorState> navigatorKey =
      GlobalKey<NavigatorState>();

 

  static GlobalKey<NavigatorState> get getNavigatorKey => navigatorKey;
  
  // ... rest of your code
}

