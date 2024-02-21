import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kicks_sneakerapp/application/bussiness_logic/home/home_bloc.dart';
import 'package:kicks_sneakerapp/application/presentation/routes/routes.dart';
import 'package:kicks_sneakerapp/application/presentation/utils/colors.dart';
import 'package:kicks_sneakerapp/application/presentation/utils/constants.dart';
import 'package:kicks_sneakerapp/application/presentation/utils/loadin_animation/loading_animation.dart';

class MonthlyOfferBoard extends StatelessWidget {
  const MonthlyOfferBoard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<HomeBloc>().add(const HomeEvent.getBanner());
    });
    return Container(
      width: sWidth,
      height: sWidth * 0.40,
      padding: const EdgeInsets.all(20),
      decoration: const BoxDecoration(boxShadow: [
        BoxShadow(
            blurRadius: 3, blurStyle: BlurStyle.outer, offset: Offset(0, 0.5))
      ], color: kBlack, borderRadius: BorderRadius.all(kRadius20)),
      child: BlocConsumer<HomeBloc, HomeState>(
        listener: (context, state) {},
        builder: (context, state) {
          if (state.isLoading) {
            return const LoadingAnimation(width: 0.20);
          }
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                height: sWidth * 0.35,
                width: sWidth * 0.35,
                child: state.hasError || state.banners == null
                    ? kHeight10
                    : Stack(
                        children: [
                          SizedBox(
                            height: sWidth * 0.30,
                            width: sWidth * 0.25,
                            child:CachedNetworkImage(imageUrl: state.banners![0].images![0],
                            errorWidget:(context, object, stackTrace){
                              return Icon(Icons.error);

                            }),
                          ),
                          Positioned(
                            right: 0,
                            child: SizedBox(
                              height: sWidth * 0.30,
                              width: sWidth * 0.25,
                              child:
                                  Image.network(state.banners![0].images![1]),
                            ),
                          )
                        ],
                      ),
              ),
              state.hasError || state.banners == null
                  ? kHeight10
                  : Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          '${state.banners![0].categoryName!} Sneakers',
                          style: roboto(
                              fontSize: 0.04,
                              color: kWhite,
                              fontWeight: FontWeight.w700),
                        ),
                        Text(
                          'Up To ${state.banners![0].discountPercentage}%',
                          style: tektur(
                              color: kWhite,
                              fontSize: 0.05,
                              fontWeight: FontWeight.w300),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.pushNamed(
                                context, Routes.categoryListScreen,
                                arguments: state.banners![0].categoryName);
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor: kGreen, foregroundColor: kWhite),
                          child: Text(
                            'Shop Now',
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: sWidth * 0.04),
                          ),
                        ),
                      ],
                    )
            ],
          );
        },
      ),
    );
  }
}
