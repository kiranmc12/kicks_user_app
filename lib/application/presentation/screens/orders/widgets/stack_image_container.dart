import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:kicks_sneakerapp/application/presentation/utils/colors.dart';
import 'package:kicks_sneakerapp/application/presentation/utils/constants.dart';

import 'package:flutter/material.dart';
import 'package:kicks_sneakerapp/application/presentation/utils/colors.dart';
import 'package:kicks_sneakerapp/application/presentation/utils/constants.dart';
import 'package:kicks_sneakerapp/application/presentation/utils/loadin_animation/loading_animation.dart';

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
        color: kWhite,
        borderRadius: const BorderRadius.all(kRadius10),
        boxShadow: [
          BoxShadow(
            color: kBlack.withOpacity(0.8),
            blurRadius: 1.5,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: const BorderRadius.all(kRadius10),
        child: CachedNetworkImage(
          imageUrl: image,
          placeholder: (context, url) => const LoadingAnimation(
            width: 0.20,
          ),
          errorWidget: (context, url, error) => const Icon(Icons.error),
        ),
      ),
    );
  }
}
