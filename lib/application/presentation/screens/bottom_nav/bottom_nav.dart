import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_floating_bottom_bar/flutter_floating_bottom_bar.dart';
import 'package:kicks_sneakerapp/application/bussiness_logic/auth/auth_bloc.dart';
import 'package:kicks_sneakerapp/application/presentation/routes/routes.dart';
import 'package:kicks_sneakerapp/application/presentation/screens/favorite/favorites.dart';
import 'package:kicks_sneakerapp/application/presentation/screens/home/home.dart';
import 'package:kicks_sneakerapp/application/presentation/screens/profile/profile.dart';
import 'package:kicks_sneakerapp/application/presentation/screens/search/search.dart';
import 'package:kicks_sneakerapp/application/presentation/utils/colors.dart';
import 'package:kicks_sneakerapp/application/presentation/utils/constants.dart';
import 'package:kicks_sneakerapp/application/presentation/utils/snackbar/showSnack.dart';
import 'package:kicks_sneakerapp/application/presentation/widgets/appbar_widget.dart';

class ScreenBottombar extends StatefulWidget {
  const ScreenBottombar({super.key});

  @override
  _ScreenBottombarState createState() => _ScreenBottombarState();
}

class _ScreenBottombarState extends State<ScreenBottombar>
    with SingleTickerProviderStateMixin {
  late int currentPage;
  late TabController tabController;

  @override
  void initState() {
    currentPage = 0;
    tabController = TabController(length: 4, vsync: this);
    tabController.animation!.addListener(
      () {
        final value = tabController.animation!.value.round();
        if (value != currentPage && mounted) {
          changePage(value);
        }
      },
    );
    super.initState();
  }

  void changePage(int newPage) {
    setState(() {
      currentPage = newPage;
    });
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: appbarWidget(title: 'Kicks'),
          drawer: Drawer(
            child: Column(
              children: [
                Container(
                  height: 200,
                  color: kGrey,
                  child: const CircleAvatar(
                    radius: 50,
                    backgroundColor: kBlack,
                    child: Icon(
                      Icons.settings,
                      size: 55,
                      color: kWhite,
                    ),
                  ),
                ),
                Expanded(
                  child: ListView(
                    children: [
                      ListTile(
                        title: const Text("Logout"),
                        trailing: const Icon(Icons.logout),
                        tileColor: kGrey,
                        onTap: () {
                          showDialog(
                              context: context,
                              builder: (context) => AlertDialog(
                                    title: const Text("Logout"),
                                    content: const Text(
                                        "Are you sure you want to logout?"),
                                    actions: [
                                      TextButton(
                                          onPressed: () {
                                            Navigator.of(context).pop();
                                          },
                                          child: const Text("Cancel")),
                                      TextButton(
                                          onPressed: () {
                                            context
                                                .read<AuthBloc>()
                                                .add(AuthEvent.signOut());
                                            Navigator.pushNamedAndRemoveUntil(
                                                context,
                                                Routes.signInPage,
                                                (route) => false);
                                            showSnack(
                                                context: context,
                                                message:
                                                    "Logged out successfully",
                                                color: kGreen);
                                          },
                                          child: const Text("Ok"))
                                    ],
                                  ));
                        },
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          body: BottomBar(
            borderRadius: BorderRadius.circular(500),
            body: (context, controller) => Padding(
              padding: const EdgeInsets.fromLTRB(20, 5, 20, 0),
              child: TabBarView(
                  controller: tabController,
                  dragStartBehavior: DragStartBehavior.down,
                  physics: const BouncingScrollPhysics(),
                  children: const [
                    ScreenHome(),
                    ScreenSearch(),
                    ScreenFavorites(),
                    ScreenProfile()
                  ]),
            ),
            child: SizedBox(
              height: sWidth * 0.17,
              child: TabBar(
                controller: tabController,
                unselectedLabelColor: kGrey,
                indicatorColor: Colors.transparent,
                tabs: [
                  Tab(
                    icon: currentPage == 0
                        ? const CircleAvatar(
                            backgroundColor: kWhite,
                            child: Icon(Icons.home),
                          )
                        : const Icon(Icons.home),
                  ),
                  Tab(
                    icon: currentPage == 1
                        ? const CircleAvatar(
                            backgroundColor: kWhite,
                            child: Icon(Icons.search),
                          )
                        : const Icon(EvaIcons.search),
                  ),
                  Tab(
                    icon: currentPage == 2
                        ? const CircleAvatar(
                            backgroundColor: kWhite,
                            child: Icon(Icons.favorite),
                          )
                        : const Icon(Icons.favorite),
                  ),
                  Tab(
                    icon: currentPage == 3
                        ? const CircleAvatar(
                            backgroundColor: kWhite,
                            child: Icon(
                              EvaIcons.people,
                            ),
                          )
                        : const Icon(EvaIcons.people),
                  )
                ],
              ),
            ),
          )),
    );
  }
}
