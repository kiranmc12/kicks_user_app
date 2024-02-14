part of 'cart_bloc.dart';

@freezed
class CartState with _$CartState {
  const factory CartState(
      {required bool isLoading,
      required bool hasError,
      required bool isDone,
      required bool quantityIndicator,
      required Map<int, int> cartItems,
      double? bagTotal,
      double? amountPayable,
      String? message,
      GetCartResponseModel? getCartResponseModel,
      List<Coupons>? coupons}) = _Initial;
  factory CartState.Initial() => const CartState(
      isLoading: true,
      hasError: false,
      isDone: false,
      quantityIndicator: false,
      cartItems: {});
}
