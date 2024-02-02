import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:kicks_sneakerapp/application/presentation/screens/home/widgets/circle_avatar_widget.dart';

import 'package:kicks_sneakerapp/application/presentation/utils/colors.dart';
import 'package:kicks_sneakerapp/application/presentation/utils/constants.dart';
import 'package:kicks_sneakerapp/application/presentation/widgets/custom_search_field_widget.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomSearchFieldWidget(),
              kHeight20,
              Container(
                height: 100,
                color: kWhite,
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CircleAvatarWidget(
                      imageUrl: nikeUrl,
                      brandName: 'Nike',
                    ),
                    CircleAvatarWidget(
                      imageUrl: adidasUrl,
                      brandName: 'Adidas',
                    ),
                    CircleAvatarWidget(
                      imageUrl: pumaURL,
                      brandName: 'Puma',
                    )
                  ],
                ),
              ),
              Container(
                height: sHeight * 0.18,
                decoration: BoxDecoration(
                  color: kBlack,
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 25, top: 15),
                            child: SizedBox(
                                height: sHeight * 0.1,
                                width: sWidth * 0.2,
                                child: Image.network(shoe1uRL)),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 25, right: 5, left: 50),
                            child: Column(
                              children: [
                                Text(
                                  "Monthly Offers",
                                  style: roboto(
                                      color: kWhite,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 0.06),
                                ),
                                Text(
                                  "Upto 70% off",
                                  style: roboto(color: kGreen),
                                ),
                                kHeight10,
                                ElevatedButton(
                                    onPressed: () {},
                                    style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all<Color>(
                                              Colors.green),
                                    ),
                                    child: Text(
                                      "Shop now",
                                      style: roboto(
                                        color: kWhite,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    )),
                              ],
                            ),
                          ),
                          kWidth30,
                        ],
                      ),
                    )
                  ],
                ),
              ),
              kHeight20,
              GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: 1 / 1.6,
                    crossAxisSpacing: 5,
                    mainAxisSpacing: 5,
                    crossAxisCount: 2),
                itemCount: 10, // Replace with the actual item count
                itemBuilder: (context, index) {
                  // You can replace the following Container with your actual grid item widget
                  return Column(
                    children: [
                      Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 7, right: 10, top: 10, bottom: 5),
                            child: Container(
                                height: sWidth * 0.5,
                                color: kGrey, // Replace with your desired color
                                child: SizedBox(
                                  width: double.infinity,
                                  child: Image.network(shoe1uRL),
                                )),
                          ),
                          Positioned(
                            right: 10,
                            top: 10,
                            child: CircleAvatar(
                              radius: 20,
                              backgroundColor: kWhite,
                              child: IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.favorite,
                                    color: kRed,
                                  )),
                            ),
                          ),
                        ],
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Adidas Campus Shoe",
                          textAlign: TextAlign.start,
                          style: roboto(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            "₹5656",
                            style: roboto(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const Spacer(),
                          Container(
                            decoration: const BoxDecoration(
                                borderRadius: BorderRadius.all(kRadius5),
                                color: kGreen),
                            height: 20,
                            width: 30,
                            child: Text(
                              "50%",
                              textAlign: TextAlign.center,
                              style: roboto(
                                  color: kWhite, fontWeight: FontWeight.bold),
                            ),
                          ),
                          kWidth10,
                        ],
                      ),
                    ],
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
