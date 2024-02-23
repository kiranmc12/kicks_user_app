part of 'orders_bloc.dart';

@freezed
class OrdersState with _$OrdersState {
  const factory OrdersState(
      {required bool isLoading,
      required bool hasError,
      required bool isDone,
      String? message,
      Address? selecteAddress,
      PaymentMethod? selectedPaymentMethod,
      GetCheckoutResponseModel? getCheckoutResponseModel,
      List<Orders>? orders,
    
      GetAllOrdersResposneModel? getAllOrdersResposneModel,
      GetOrderDetailsResponseModel? getOrderDetailsResponseModel}) = _Initial;
  factory OrdersState.initial() =>
      const OrdersState(isLoading: true, hasError: false, isDone: false);
}
