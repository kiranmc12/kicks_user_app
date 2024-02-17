part of 'orders_bloc.dart';

@freezed
class OrdersEvent with _$OrdersEvent {
  const factory OrdersEvent.getOrders() = _GetOrder;
  const factory OrdersEvent.getOrderDetails({required int orderId}) =
      _GetOrderDetails;
  const factory OrdersEvent.cancelOrder({required int orderId}) = _CancelOrder;
  const factory OrdersEvent.returnOrder({required int orderId}) = _ReturnOrder;
  const factory OrdersEvent.getCheckout() = _GetCheckOut;
  const factory OrdersEvent.callRazorpay(
      {required PlaceOrderModel placeOrderModel,
      required int amount}) = _CallRazorpay;
  const factory OrdersEvent.placeOrder(
      {required PlaceOrderModel placeOrderModel}) = _PlaceOrder;
  const factory OrdersEvent.setPaymnetMethod(
      {required PaymentMethod paymentMethod}) = _SetPaymnetMethod;
  const factory OrdersEvent.setAddress({required Address address}) =
      _SetAddress;
}
