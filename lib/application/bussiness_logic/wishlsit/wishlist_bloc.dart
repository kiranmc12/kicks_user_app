import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kicks_sneakerapp/data/shared_preferences/shared_preferences.dart';
import 'package:kicks_sneakerapp/domain/models/id_query/id_query.dart';
import 'package:kicks_sneakerapp/domain/models/wishlist/addto_wish_list_model/add_to_wish_list_model.dart';
import 'package:kicks_sneakerapp/domain/models/wishlist/get_wish_list_response_model/get_wish_list_response_model.dart';
import 'package:kicks_sneakerapp/domain/models/wishlist/remove_from_wishlist/remove_from_wishlist_query.dart';
import 'package:kicks_sneakerapp/domain/repositories/wishlist_repository.dart';

part 'wishlist_event.dart';
part 'wishlist_state.dart';
part 'wishlist_bloc.freezed.dart';

class WishlistBloc extends Bloc<WishlistEvent, WishlistState> {
  final WishlistRepository wishListApi;
  WishlistBloc(this.wishListApi) : super(WishlistState.initial()) {
    on<_GetWishList>((event, emit) async {
      emit(state.copyWith(isLoading: true, isDone: false, hasError: false));
      final tokenModel = await SharedPref.getToken();

      final result = await wishListApi.getWishList(
          idQuery: IdQuery(id: tokenModel.userId));
      result.fold(
          (failure) => emit(state.copyWith(
              hasError: true,
              isLoading: false,
              message: 'please refresh, something went wrong')),
          (getWishListResponseModel) {
        emit(state.copyWith(
            getWishListResponseModel: getWishListResponseModel,
            isLoading: false));
      });
    });

    on<_AddToWishList>((event, emit) async {
      emit(state.copyWith(isLoading: true, hasError: false, isDone: false));
      final tokenModel = await SharedPref.getToken();
      final result = await wishListApi.addToWishList(
          addToWishListModel:
              AddToWishList(userId: tokenModel.userId, inventoryId: event.id));
      result.fold(
          (failure) => emit(state.copyWith(
              hasError: true,
              isLoading: false,
              isDone: false,
              message: failure.message)),
          (sucessResponse) => emit(state.copyWith(
              hasError: true,
              isLoading: false,
              message: sucessResponse.message)));
      add(const WishlistEvent.getWishList());
    });

    on<_RemoveFromWishList>((event, emit) async {
      emit(state.copyWith(isLoading: true, hasError: false, isDone: false));
      final result = await wishListApi.removeFromWishList(
          idQurrey: RemoveFromWishListQurrey(invId: event.id));
      result.fold(
          (failure) => emit(state.copyWith(
              hasError: true, isLoading: false, message: failure.message)),
          (successResponseModel) => emit(state.copyWith(
              hasError: true, message: successResponseModel.message)));
      add(const WishlistEvent.getWishList());
    });
  }
}
