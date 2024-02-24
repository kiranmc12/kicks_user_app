import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kicks_sneakerapp/application/bussiness_logic/Inventory/inventory_bloc.dart';
import 'package:kicks_sneakerapp/application/presentation/screens/home/widgets/product_tile.dart';
import 'package:kicks_sneakerapp/application/presentation/utils/constants.dart';
import 'package:kicks_sneakerapp/application/presentation/utils/loadin_animation/loading_animation.dart';

class PopularGridView extends StatelessWidget {
  const PopularGridView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Popular Products',
          style: tektur(fontWeight: FontWeight.bold, fontSize: 0.04),
        ),
        kHeight10,
        BlocConsumer<InventoryBloc, InventoryState>(
          listener: (context, state) {},
          buildWhen: (previous, current) =>
              previous.inventories == null && current.inventories != null,
          builder: (context, state) {
            if (state.isLoading) {
              return const LoadingAnimation(width: 0.30);
            }
            if (state.inventories != null) {
              return GridView.builder(
                  shrinkWrap: true,
                  itemCount: 4,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 1 / 1.6,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10),
                  itemBuilder: (context, index) =>
                      ProductTile(inventories: state.inventories![index]));
            } else {
              return Center(
                  child: Text(
                'Nothing to show',
                style: tektur(),
              ));
            }
          },
        ),
      ],
    );
  }
}


