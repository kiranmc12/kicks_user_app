import 'package:flutter/material.dart';
import 'package:kicks_sneakerapp/application/presentation/utils/colors.dart';
import 'package:kicks_sneakerapp/application/presentation/utils/constants.dart';

class ImageShowContainer extends StatelessWidget {
  const ImageShowContainer({
    super.key,
    required this.image,
    required this.width,
  });

  final String image;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(20, 30, 30, 5),
      height: sWidth * width,
      decoration: const BoxDecoration(
          color: kWhite, borderRadius: BorderRadius.all(kRadius10)),
      child: SizedBox(
          width: double.infinity,
          child: Image.network(
            image,
            fit: BoxFit.fill,
          )),
    );
  }
}
