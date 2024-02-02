import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kicks_sneakerapp/application/bussiness_logic/Inventory/inventory_bloc.dart';
import 'package:kicks_sneakerapp/application/presentation/utils/colors.dart';
import 'package:kicks_sneakerapp/application/presentation/utils/constants.dart';

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
          listener: (context, state) {
          },
          builder: (context, state) {
            return GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 1 / 1.6,
                  crossAxisSpacing: 5,
                  mainAxisSpacing: 5,
                  crossAxisCount: 2),
              itemCount: 10, // Replace with the actual item count
              itemBuilder: (context, index) {
                return ProductTile();
              },
            );
          },
        ),
      ],
    );
  }
}

class ProductTile extends StatelessWidget {
  const ProductTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Padding(
              padding:
                  const EdgeInsets.only(left: 7, right: 10, top: 10, bottom: 5),
              child: Container(
                  height: sWidth * 0.5,
                  color: kGrey, // Replace with your desired color
                  child: SizedBox(
                    width: double.infinity,
                    child: Image.network(shoe1uRL),
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
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            "Adidas Campus Shoe",
            textAlign: TextAlign.start,
            style: roboto(fontWeight: FontWeight.bold),
          ),
        ),
        Row(
          children: [
            Text(
              "₹5656",
              style: roboto(
                fontWeight: FontWeight.bold,
              ),
            ),
            const Spacer(),
            Container(
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(kRadius5), color: kGreen),
              height: 20,
              width: 30,
              child: Text(
                "50%",
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
