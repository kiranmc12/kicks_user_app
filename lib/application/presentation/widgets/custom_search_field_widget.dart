import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:kicks_sneakerapp/application/presentation/utils/colors.dart';

class CustomSearchFieldWidget extends StatelessWidget {
  const CustomSearchFieldWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: const TextStyle(color: kBlack),
      decoration: InputDecoration(
        prefixIcon: const Icon(EvaIcons.searchOutline),
        filled: true,
        fillColor: kGrey,
        contentPadding: const EdgeInsets.symmetric(vertical: 14.0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(50),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
