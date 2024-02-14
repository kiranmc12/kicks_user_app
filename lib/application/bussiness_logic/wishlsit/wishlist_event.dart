part of 'wishlist_bloc.dart';

@freezed
class WishlistEvent with _$WishlistEvent {
  const factory WishlistEvent.getWishList() = _GetWishList;
  const factory WishlistEvent.addToWishList({required int id}) = _AddToWishList;
  const factory WishlistEvent.removeFromWishList({required int id}) =
      _RemoveFromWishList;
}
