import 'package:flutter/material.dart';
import 'package:kicks_sneakerapp/application/presentation/utils/colors.dart';

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
          onTap: (){
          },
          child: CircleAvatar(
            radius: 35,
            backgroundColor: kGrey,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Image.network(
                imageUrl,
                fit: BoxFit.contain,
              ),
            ),
          ),
        ),
        Text(brandName)
      ],
    );
  }
}
