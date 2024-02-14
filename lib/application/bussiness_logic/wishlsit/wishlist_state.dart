part of 'wishlist_bloc.dart';

@freezed
class WishlistState with _$WishlistState {
  const factory WishlistState(
      {required bool isLoading,
      required bool hasError,
      required bool isDone,
      String? message,
      GetWishListResponseModel? getWishListResponseModel}) = _Initial;

  factory WishlistState.initial() =>
      WishlistState(isLoading: false, hasError: false, isDone: false);
}
