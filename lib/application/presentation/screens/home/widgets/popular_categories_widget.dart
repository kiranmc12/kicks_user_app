
import 'package:flutter/material.dart';
import 'package:kicks_sneakerapp/application/presentation/screens/home/widgets/circle_avatar_widget.dart';
import 'package:kicks_sneakerapp/application/presentation/utils/colors.dart';
import 'package:kicks_sneakerapp/application/presentation/utils/constants.dart';

class PopularCategories extends StatelessWidget {
  const PopularCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: kWhite,
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CircleAvatarWidget(
            imageUrl: nikeUrl,
            brandName: 'Nike',
          ),
          CircleAvatarWidget(
            imageUrl: adidasUrl,
            brandName: 'Adidas',
          ),
          CircleAvatarWidget(
            imageUrl: pumaURL,
            brandName: 'Puma',
          )
        ],
      ),
    );
  }
}