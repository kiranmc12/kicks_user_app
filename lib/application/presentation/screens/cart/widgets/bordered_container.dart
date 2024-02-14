import 'package:flutter/widgets.dart';
import 'package:kicks_sneakerapp/application/presentation/utils/colors.dart';
import 'package:kicks_sneakerapp/application/presentation/utils/constants.dart';

class BorderContainer extends StatelessWidget {
  const BorderContainer({
    super.key,
    required this.string,
  });

  final String string;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      height: sWidth * 0.07,
      decoration: const BoxDecoration(
          border: Border(
              top: BorderSide(),
              right: BorderSide(),
              left: BorderSide(),
              bottom: BorderSide()),
          borderRadius: BorderRadius.all(kRadius5),
          color: kWhite),
      child: Center(
          child: Text(
        string,
        style: priceStyle,
      )),
    );
  }
}
