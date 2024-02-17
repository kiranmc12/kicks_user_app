import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kicks_sneakerapp/application/bussiness_logic/auth/auth_bloc.dart';
import 'package:kicks_sneakerapp/application/presentation/routes/routes.dart';
import 'package:kicks_sneakerapp/application/presentation/utils/constants.dart';
import 'package:kicks_sneakerapp/application/presentation/utils/show_dialog/show_dialog.dart';

class SettingTiles extends StatelessWidget {
  const SettingTiles({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ListTile(
            title: const Text("Orders"),
            trailing: const Icon(
              Icons.arrow_back_ios_new_outlined,
              size: 15,
            ),
            onTap: () {
              Navigator.pushNamed(context, Routes.orderScreen);
            },
          ),
          const Divider(),
          ListTile(
            title: const Text("User Details"),
            trailing: const Icon(
              Icons.arrow_back_ios_new_outlined,
              size: 15,
            ),
            onTap: () {
              Navigator.pushNamed(context, Routes.userDetailScreen);
            },
          ),
          const Divider(),
          ListTile(
            title: const Text("Share"),
            trailing: const Icon(
              Icons.arrow_back_ios_new_outlined,
              size: 15,
            ),
            onTap: () {},
          ),
          const Divider(),
          ListTile(
            title: const Text("About"),
            trailing: const Icon(
              Icons.arrow_back_ios_new_outlined,
              size: 15,
            ),
            onTap: () {},
          ),
          const Divider(),
          ListTile(
            title: const Text("Privacy Policy"),
            trailing: const Icon(
              Icons.arrow_back_ios_new_outlined,
              size: 15,
            ),
            onTap: () {},
          ),
          const Divider(),
          ListTile(
            title: const Text("Logout"),
            trailing: const Icon(
              Icons.arrow_back_ios_new_outlined,
              size: 15,
            ),
            onTap: () {
              logout() {
                context.read<AuthBloc>().add(AuthEvent.signOut());
                Navigator.pushNamedAndRemoveUntil(
                    context, Routes.signInPage, (route) => false);
              }

              customShowDialoge(context: context, onPress: logout);
            },
          ),
          const Divider(),
          kHeight10,
          const Text('Version : 1.0.0')
        ],
      ),
    );
  }
}
