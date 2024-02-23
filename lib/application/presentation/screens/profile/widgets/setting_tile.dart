import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:kicks_sneakerapp/application/bussiness_logic/auth/auth_bloc.dart';
import 'package:kicks_sneakerapp/application/presentation/routes/routes.dart';
import 'package:kicks_sneakerapp/application/presentation/utils/constants.dart';
import 'package:kicks_sneakerapp/application/presentation/utils/show_dialog/show_dialog.dart';
import 'package:url_launcher/url_launcher.dart';

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
            onTap: () {
              Navigator.pushNamed(context, Routes.aboouAndPolicyScreen);
            },
          ),
          const Divider(),
          ListTile(
            title: const Text("Privacy Policy"),
            trailing: const Icon(
              Icons.arrow_back_ios_new_outlined,
              size: 15,
            ),
            onTap: () async {
              final Uri url = Uri.parse(
                  'https://www.privacypolicies.com/live/381f2dcb-89c2-4bad-8291-1f9381b65693');
              if (!await launchUrl(url)) {
                Fluttertoast.showToast(msg: 'cannot open url');
              }
            },
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
