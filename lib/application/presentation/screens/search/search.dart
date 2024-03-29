import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kicks_sneakerapp/application/bussiness_logic/Inventory/inventory_bloc.dart';
import 'package:kicks_sneakerapp/application/presentation/screens/home/widgets/product_tile.dart';
import 'package:kicks_sneakerapp/application/presentation/utils/constants.dart';
import 'package:kicks_sneakerapp/application/presentation/utils/loadin_animation/loading_animation.dart';
import 'package:kicks_sneakerapp/application/presentation/widgets/custom_search_field_widget.dart';
import 'package:lottie/lottie.dart';

class ScreenSearch extends StatefulWidget {
  const ScreenSearch({super.key});

  @override
  State<ScreenSearch> createState() => _ScreenSearchState();
}

class _ScreenSearchState extends State<ScreenSearch> {
  final scrollController = ScrollController();

  @override
  void initState() {
    scrollController.addListener(() {
      _scrollCallBack();
    });
    super.initState();
  }

  _scrollCallBack() {
    if (scrollController.position.pixels ==
            scrollController.position.maxScrollExtent &&
        !context.read<InventoryBloc>().isScrollLoading) {
      context.read<InventoryBloc>().add(const InventoryEvent.nextPage());
    }
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      controller: scrollController,
      child: Column(
        children: [
           const SizedBox(
            child: CustomSearchFieldWidget(),
          ),
          // AnimatedBox(isSort: isSort),
          BlocBuilder<InventoryBloc, InventoryState>(
            builder: (context, state) {
              if (state.inventories == null || state.inventories!.isEmpty) {
                return Column(
                  children: [
                    Center(child: Lottie.asset(noDataUrl)),
                    Text(
                      "Sorry!,No result",
                      style: tektur(fontSize: 0.04),
                    )
                  ],
                );
              }
              return GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: state.loadMore
                      ? state.inventories!.length + 1
                      : state.inventories!.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 1 / 1.5,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10),
                  itemBuilder: (context, index) {
                    if (state.loadMore && index == state.inventories!.length) {
                      return const LoadingAnimation(width: 0.20);
                    }
                    return ProductTile(inventories: state.inventories![index]);
                  });
            },
          ),
          SizedBox(height: sWidth * 0.20)
        ],
      ),
    );
  }
}
