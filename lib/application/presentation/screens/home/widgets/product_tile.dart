import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:kicks_sneakerapp/application/presentation/routes/routes.dart';
import 'package:kicks_sneakerapp/application/presentation/screens/inventory/fav_button.dart';
import 'package:kicks_sneakerapp/application/presentation/utils/colors.dart';
import 'package:kicks_sneakerapp/application/presentation/utils/constants.dart';
import 'package:kicks_sneakerapp/application/presentation/utils/loadin_animation/loading_animation.dart';
import 'package:kicks_sneakerapp/domain/models/inventory/get_inventory_response_model/datum.dart';

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
                      child: CachedNetworkImage(
                        imageUrl: inventories.image!,
                        placeholder: (context, url) =>
                            LoadingAnimation(width: sWidth * 0.0002),
                        errorWidget: (context, url, error) => const Icon(
                          Icons.error,
                          size: 20,
                        ),
                      ),
                    )),
              ),
              Positioned(
                  right: 10,
                  top: 10,
                  child: FavButton(
                      isFav: inventories.ifPresentAtWishlist!,
                      id: inventories.id!)),
            ],
          ),
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            inventories.productName!,
            textAlign: TextAlign.start,
            style: tektur(fontWeight: FontWeight.w500),
          ),
        ),
        Row(
          children: [
            Text(
              "₹${inventories.discountedPrice!.round()}",
              style: roboto(fontWeight: FontWeight.bold, fontSize: 0.03),
            ),
            kWidth10,
            Text(
              '₹ ${inventories.price!.toString()}',
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: sWidth * 0.028,
                  color: kBlack.withOpacity(0.7),
                  decoration: TextDecoration.lineThrough),
            ),
            const Spacer(),
            Container(
              padding: const EdgeInsets.all(0),
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(kRadius5), color: kGreen),
              height: 20,
              width: 40,
              child: Center(
                child: Text(
                  "${(100 - (inventories.discountedPrice! / inventories.price!) * 100).round()}% off",
                  textAlign: TextAlign.center,
                  style: roboto(
                      color: kWhite,
                      fontWeight: FontWeight.bold,
                      fontSize: 0.025),
                ),
              ),
            ),
            kWidth10,
          ],
        ),
      ],
    );
  }
}
