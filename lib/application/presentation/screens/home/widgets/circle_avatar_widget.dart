import 'package:flutter/material.dart';
import 'package:kicks_sneakerapp/application/presentation/routes/routes.dart';
import 'package:kicks_sneakerapp/application/presentation/utils/colors.dart';
import 'package:kicks_sneakerapp/application/presentation/utils/constants.dart';

class CircleAvatarWidget extends StatelessWidget {
  final String imageUrl;
  final String brandName;
  const CircleAvatarWidget({
    super.key,
    required this.imageUrl,
    required this.brandName,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () {
            Navigator.pushNamed(context, Routes.categoryListScreen,
                arguments: brandName);
          },
          child: CircleAvatar(
            radius: 35,
            backgroundColor: kGrey,
            child: Padding(
              padding:  EdgeInsets.all(10.0),
              child: Image.asset(
                imageUrl,
                
                
              ),
            ),
          ),
        ),
        Text(brandName)
      ],
    );
  }
}
