import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kicks_sneakerapp/domain/models/banners/get_banner_response_model/datum.dart';
import 'package:kicks_sneakerapp/domain/models/category/get_category_response_model/category.dart';
import 'package:kicks_sneakerapp/domain/repositories/home_repository.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final HomeRespository homeRespository;
  Map<String, int> categoryMap = {};

  HomeBloc(this.homeRespository) : super(HomeState.initial()) {
    on<_GetBanner>((event, emit) async {
      emit(state.copyWith(isLoading: true, hasError: false, expired: false));
      final result = await homeRespository.getBanners();
      result.fold((failure) {
        if (failure.statuscode == 401) {
          return emit(state.copyWith(expired: true));
        }
        emit(state.copyWith(
            isLoading: false,
            hasError: true,
            message: 'please refresh your application'));
      }, (getBannerResponseModel) {
        emit(state.copyWith(
            isLoading: false, banners: getBannerResponseModel.data,));
      });
    });

    on<_GetCategory>((event, emit) async {
      emit(state.copyWith(isLoading: true, hasError: false));
      final result = await homeRespository.getCategory();
      result.fold((failure) {
        emit(state.copyWith(
            isLoading: false,
            hasError: true,
            message: failure.message));
      }, (getCategoryResponseModel) {
        if (getCategoryResponseModel.data != null) {
          for (var item in getCategoryResponseModel.data!) {
            categoryMap[item.category!] = item.id!;
            print(categoryMap);
          }
        }
        emit(state.copyWith(
            isLoading: false, category: getCategoryResponseModel.data,));
      });
    });
  }
}
