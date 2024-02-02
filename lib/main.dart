import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kicks_sneakerapp/application/bussiness_logic/Inventory/inventory_bloc.dart';
import 'package:kicks_sneakerapp/application/bussiness_logic/auth/auth_bloc.dart';
import 'package:kicks_sneakerapp/application/bussiness_logic/home/home_bloc.dart';
import 'package:kicks_sneakerapp/application/presentation/routes/navigator_key.dart';
import 'package:kicks_sneakerapp/application/presentation/routes/route_generator.dart';
import 'package:kicks_sneakerapp/application/presentation/routes/routes.dart';
import 'package:kicks_sneakerapp/application/presentation/screens/auth/otp_verification.dart';
import 'package:kicks_sneakerapp/application/presentation/utils/constants.dart';
import 'package:kicks_sneakerapp/data/services/auth/auth.dart';
import 'package:kicks_sneakerapp/data/services/home/home.dart';
import 'package:kicks_sneakerapp/data/services/inventory/inventory.dart';

void main() {
  runApp(KicksUserApp());
}

class KicksUserApp extends StatelessWidget {
  KicksUserApp({super.key});

  final RouteGenerator routeGenerator = RouteGenerator();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => AuthBloc(AuthApi())),
        BlocProvider(create: (context) => HomeBloc(HomeApi())),
        BlocProvider(create: (context) => InventoryBloc(InventoryApi()))
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          fontFamily: GoogleFonts.tektur().fontFamily,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        initialRoute: Routes.initial,
        onGenerateRoute: routeGenerator.onGenerateRoute,
        navigatorKey: NavigationService().navigatorKey,
        scaffoldMessengerKey: NavigationService().scaffoldMessengerKey,
      ),
    );
  }
}
