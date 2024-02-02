import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kicks_sneakerapp/application/bussiness_logic/Inventory/inventory_bloc.dart';
import 'package:kicks_sneakerapp/application/presentation/screens/home/widgets/monthly_offer_board.dart';
import 'package:kicks_sneakerapp/application/presentation/screens/home/widgets/popular_categories_widget.dart';
import 'package:kicks_sneakerapp/application/presentation/screens/home/widgets/popular_grid_view.dart';

import 'package:kicks_sneakerapp/application/presentation/utils/constants.dart';
import 'package:kicks_sneakerapp/application/presentation/widgets/custom_search_field_widget.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<InventoryBloc>().add(const InventoryEvent.getInventories());
    });
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomSearchFieldWidget(),
              kHeight20,
              const PopularCategories(),
              const MonthlyOfferBoard(),
              kHeight20,
              const PopularGridView(),
              SizedBox(height: sWidth * 0.150)
            ],
          ),
        ),
      ),
    );
  }
}
