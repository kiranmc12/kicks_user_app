import 'package:flutter/material.dart';
import 'package:kicks_sneakerapp/application/presentation/utils/colors.dart';
import 'package:kicks_sneakerapp/application/presentation/utils/constants.dart';

class StackImageContainer extends StatelessWidget {
  const StackImageContainer({
    super.key,
    required this.image,
  });

  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: sWidth * 0.19,
      width: sWidth * 0.17,
      decoration: BoxDecoration(
          image: DecorationImage(image: NetworkImage(image)),
          boxShadow: [
            BoxShadow(
                color: kBlack.withOpacity(0.8),
                blurRadius: 1.5,
                offset: const Offset(0, 2))
          ],
          color: kWhite,
          borderRadius: const BorderRadius.all(kRadius10)),
    );
  }
}