import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kicks_sneakerapp/application/bussiness_logic/Inventory/inventory_bloc.dart';
import 'package:kicks_sneakerapp/application/presentation/routes/routes.dart';
import 'package:kicks_sneakerapp/application/presentation/utils/colors.dart';
import 'package:kicks_sneakerapp/application/presentation/utils/constants.dart';
import 'package:kicks_sneakerapp/application/presentation/utils/loadin_animation/loading_animation.dart';
import 'package:kicks_sneakerapp/domain/models/inventory/get_inventory_response_model/datum.dart';

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
          style: roboto(fontWeight: FontWeight.bold, fontSize: 0.04),
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
                      childAspectRatio: 1 / 1.5,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 20),
                  itemBuilder: (context, index) =>
                      ProductTile(inventories: state.inventories![index]));
            } else {
              return const Center(child: Text('Nothing to show'));
            }
          },
        ),
      ],
    );
  }
}

class ProductTile extends StatelessWidget {
  final Inventory inventories;
  const ProductTile({
    super.key,
    required this.inventories,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () {
            Navigator.pushNamed(context, Routes.inventoryDetailScreen,
                arguments: inventories);
          },
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    left: 7, right: 10, top: 10, bottom: 5),
                child: Container(
                    height: sWidth * 0.5,
                    color: kGrey, // Replace with your desired color
                    child: SizedBox(
                      width: double.infinity,
                      child: Image.network(inventories.image!),
                    )),
              ),
              Positioned(
                right: 10,
                top: 10,
                child: CircleAvatar(
                  radius: 20,
                  backgroundColor: kWhite,
                  child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.favorite,
                        color: kRed,
                      )),
                ),
              ),
            ],
          ),
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            inventories.productName!,
            textAlign: TextAlign.start,
            style: roboto(fontWeight: FontWeight.bold),
          ),
        ),
        Row(
          children: [
            Text(
              "₹${inventories.discountedPrice!.round()}",
              style: roboto(
                fontWeight: FontWeight.bold,
              ),
            ),
            kWidth10,
            Text(
              '₹ ${inventories.price!.roundToDouble().toString()}',
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: sWidth * 0.03,
                  color: kBlack.withOpacity(0.7),
                  decoration: TextDecoration.lineThrough),
            ),
            Spacer(),
            Container(
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(kRadius5), color: kGreen),
              height: 20,
              width: 30,
              child: Text(
                "${(100 - (inventories.discountedPrice! / inventories.price!) * 100).round()}% off",
                textAlign: TextAlign.center,
                style: roboto(color: kWhite, fontWeight: FontWeight.bold),
              ),
            ),
            kWidth10,
          ],
        ),
      ],
    );
  }
}
