import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:kicks_sneakerapp/application/presentation/utils/colors.dart';
import 'package:kicks_sneakerapp/application/presentation/utils/constants.dart';
import 'package:kicks_sneakerapp/application/presentation/utils/loadin_animation/loading_animation.dart';

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
          child: CachedNetworkImage(
            imageUrl: image,
            placeholder: (context, url) => const LoadingAnimation(width: 0.002),
            errorWidget: (context, url, error) => const Icon(Icons.error),
          ),
        ));
  }
}
