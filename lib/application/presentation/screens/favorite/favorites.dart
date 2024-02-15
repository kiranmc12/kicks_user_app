import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kicks_sneakerapp/application/bussiness_logic/Inventory/inventory_bloc.dart';
import 'package:kicks_sneakerapp/application/bussiness_logic/wishlsit/wishlist_bloc.dart';
import 'package:kicks_sneakerapp/application/presentation/screens/favorite/fav_tile.dart';
import 'package:kicks_sneakerapp/application/presentation/utils/colors.dart';
import 'package:kicks_sneakerapp/application/presentation/utils/constants.dart';
import 'package:kicks_sneakerapp/application/presentation/utils/loadin_animation/loading_animation.dart';
import 'package:kicks_sneakerapp/application/presentation/utils/snackbar/showSnack.dart';
import 'package:kicks_sneakerapp/application/presentation/widgets/appbar_widget.dart';

class ScreenFavorites extends StatelessWidget {
  const ScreenFavorites({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<WishlistBloc>().add(const WishlistEvent.getWishList());
    });

    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: sHeight * 0.80,
            child: BlocConsumer<WishlistBloc, WishlistState>(
                listener: (context, state) {
                  if (state.hasError || state.isDone) {
                    showSnack(
                        context: context,
                        message: state.message ?? 'something went wrong',
                        color: state.hasError ? kRed : kGreen,
                        time: 1000);
                  }
                  if (state.isDone) {
                    context
                        .read<InventoryBloc>()
                        .add(const InventoryEvent.getInventories());
                  }
                },
                buildWhen: (previous, current) =>
                    previous.getWishListResponseModel !=
                    current.getWishListResponseModel,
                builder: (context, state) {
                  if (state.isLoading) {
                    return const LoadingAnimation(width: 0.20);
                  } else if (state.hasError) {
                    return const Text(
                        'Something went wrong while fetching data');
                  } else if (state.getWishListResponseModel != null) {
                    if (state.getWishListResponseModel!.data == null ||
                        state.getWishListResponseModel!.data!.isEmpty) {
                      return const Center(
                        child: Text("No data"),
                      );
                    }
                    return GridView.builder(
                      shrinkWrap: true,
                      primary: false,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        childAspectRatio: 1 / 1.8,
                        mainAxisSpacing: 10,
                        crossAxisSpacing: 20,
                        crossAxisCount: 2,
                      ),
                      itemBuilder: (context, index) => FavTile(
                          inventory:
                              state.getWishListResponseModel!.data![index]),
                      itemCount: state.getWishListResponseModel!.data!.length,
                    );
                  } else {
                    return const Text('WishList');
                  }
                }),
          )
        ],
      ),
    );
  }
}
