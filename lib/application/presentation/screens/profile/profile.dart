import 'package:flutter/material.dart';
import 'package:kicks_sneakerapp/application/presentation/screens/profile/widgets/setting_tile.dart';
import 'package:kicks_sneakerapp/application/presentation/screens/profile/widgets/user_details_holder.dart';
import 'package:kicks_sneakerapp/application/presentation/utils/constants.dart';

class ScreenProfile extends StatelessWidget {
  const ScreenProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        kHeight30,
        UserDetailsHolderWidget(),
        kHeight10,
        SettingTiles()
      ],
    );
  }
}
