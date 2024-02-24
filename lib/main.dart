import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kicks_sneakerapp/application/bussiness_logic/Inventory/inventory_bloc.dart';
import 'package:kicks_sneakerapp/application/bussiness_logic/auth/auth_bloc.dart';
import 'package:kicks_sneakerapp/application/bussiness_logic/cart/cart_bloc.dart';
import 'package:kicks_sneakerapp/application/bussiness_logic/home/home_bloc.dart';
import 'package:kicks_sneakerapp/application/bussiness_logic/network/network_bloc.dart';
import 'package:kicks_sneakerapp/application/bussiness_logic/orders/orders_bloc.dart';
import 'package:kicks_sneakerapp/application/bussiness_logic/user/user_bloc.dart';
import 'package:kicks_sneakerapp/application/bussiness_logic/wishlsit/wishlist_bloc.dart';
import 'package:kicks_sneakerapp/application/presentation/routes/route_generator.dart';
import 'package:kicks_sneakerapp/data/services/auth/auth.dart';
import 'package:kicks_sneakerapp/data/services/cart/cart.dart';
import 'package:kicks_sneakerapp/data/services/home/home.dart';
import 'package:kicks_sneakerapp/data/services/inventory/inventory.dart';
import 'package:kicks_sneakerapp/data/services/orders/orders.dart';
import 'package:kicks_sneakerapp/data/services/user_profile/user_profile.dart';
import 'package:kicks_sneakerapp/data/services/wishlist/wishlist.dart';

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
        // BlocProvider(create: (context)=>NetworkBloc()..add(NetworkObserve())),
        BlocProvider(create: (context) => AuthBloc(AuthApi())),
        BlocProvider(create: (context) => HomeBloc(HomeApi())),
        BlocProvider(create: (context) => InventoryBloc(InventoryApi())),
        BlocProvider(create: (context) => CartBloc(CartApi())),
        BlocProvider(create: (context) => WishlistBloc(WishListApi())),
        BlocProvider(create: (context) => UserBloc(UserProfile())),
        BlocProvider(create: (context) => OrdersBloc(Orderapi())),
      ],
      child: ScreenUtilInit(
        designSize: const Size(412, 892),
        child: MaterialApp(
          title: 'Flutter Demo',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            fontFamily: GoogleFonts.tektur().fontFamily,
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          onGenerateRoute: routeGenerator.onGenerateRoute,
          // navigatorKey: NavigationService.getNavigatorKey,
        ),
      ),
    );
  }
}
