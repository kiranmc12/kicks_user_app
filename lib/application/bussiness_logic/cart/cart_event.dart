part of 'cart_bloc.dart';

@freezed
class CartEvent with _$CartEvent {
  const factory CartEvent.getCart() = _GetCart;
  const factory CartEvent.addToCart({required AddToCartModel addToCartModel}) =
      _AddToCartModel;
  const factory CartEvent.removeFromCart({required int productId}) =
      _RemoveFromCart;
  const factory CartEvent.updateQuantityPlus({required int productId}) =
      _UpdateQuantityPlus;
  const factory CartEvent.updateQuantityMinus({required int productId}) =
      _UpdateQuantityMinus;
  const factory CartEvent.getCoupon(
      {required UpdateCartQuery updateCartQuery}) = _GetCoupon;
  const factory CartEvent.chooseCoupon({required Coupons coupon}) =
      _ChooseCoupon;
}
