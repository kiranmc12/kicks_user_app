import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kicks_sneakerapp/data/shared_preferences/shared_preferences.dart';
import 'package:kicks_sneakerapp/domain/models/id_query/id_query.dart';
import 'package:kicks_sneakerapp/domain/models/orders/get_all_orders_resposne_model/get_all_orders_resposne_model.dart';
import 'package:kicks_sneakerapp/domain/models/orders/get_checkout_response_model/get_checkout_response_model.dart';
import 'package:kicks_sneakerapp/domain/models/orders/get_checkout_response_model/payment_method.dart';
import 'package:kicks_sneakerapp/domain/models/orders/get_order_details_response_model/get_order_details_response_model.dart';
import 'package:kicks_sneakerapp/domain/models/orders/place_order_model/place_order_model.dart';
import 'package:kicks_sneakerapp/domain/models/user_details/address/get_address_response_model/address.dart';
import 'package:kicks_sneakerapp/domain/repositories/order_repository.dart';

part 'orders_event.dart';
part 'orders_state.dart';
part 'orders_bloc.freezed.dart';

class OrdersBloc extends Bloc<OrdersEvent, OrdersState> {
  final OrderRepository orderRepository;
  OrdersBloc(this.orderRepository) : super(OrdersState.initial()) {
    on<_GetOrder>((event, emit) async {
      emit(state.copyWith(isLoading: true, hasError: false, isDone: false));
      final tokenModel = await SharedPref.getToken();
      final result = await orderRepository.getOrders(
          idQuery: IdQuery(id: tokenModel.userId));
      result.fold(
          (failure) => emit(state.copyWith(
              isLoading: false, hasError: true, message: failure.message)),
          (getAllordersResponse) => emit(state.copyWith(
              isLoading: false,
              getAllOrdersResposneModel: getAllordersResponse)));
    });

    on<_GetOrderDetails>((event, emit) async {
      emit(state.copyWith(isLoading: true, hasError: false, isDone: false));
      final result =
          await orderRepository.getOrderDetails(orderId: event.orderId);
      result.fold(
          (failure) => emit(state.copyWith(
              isLoading: false, hasError: true, message: failure.message)),
          (getOrderDetailsResponse) => emit(state.copyWith(
              isLoading: false,
              getOrderDetailsResponseModel: getOrderDetailsResponse)));
    });

    on<_CancelOrder>((event, emit) async {
      emit(state.copyWith(isLoading: true, hasError: false, isDone: false));
      final result = await orderRepository.cancelOrder(
          idQuery: IdQuery(id: event.orderId));
      result.fold(
          (failure) => emit(state.copyWith(
              isLoading: false, hasError: true, message: failure.message)),
          (sucess) => emit(state.copyWith(
                isLoading: false,
                isDone: true,
                message: sucess.message,
              )));
      add(OrdersEvent.getOrderDetails(orderId: event.orderId));
      add(const OrdersEvent.getOrders());
    });

    on<_ReturnOrder>((event, emit) async {
      emit(state.copyWith(isLoading: true, hasError: false, isDone: false));
      final result = await orderRepository.returnOrder(
          idQuery: IdQuery(id: event.orderId));
      result.fold(
          (failure) => emit(state.copyWith(
              isLoading: false, hasError: true, message: failure.message)),
          (sucess) => emit(state.copyWith(
                isLoading: false,
                isDone: true,
                message: sucess.message,
              )));
      add(OrdersEvent.getOrderDetails(orderId: event.orderId));
      add(const OrdersEvent.getOrders());
    });

    on<_PlaceOrder>((event, emit) async {
      emit(state.copyWith(isLoading: true, hasError: false, isDone: false));
      final tokenModel = await SharedPref.getToken();
      event.placeOrderModel.userId = tokenModel.userId;
      final result = await orderRepository.placeOrder(
          placeOrderModel: event.placeOrderModel);
      result.fold(
          (failure) => emit(state.copyWith(
              hasError: true, isLoading: false, message: failure.message)),
          (successResponseModel) => emit(state.copyWith(
              isLoading: false,
              isDone: true,
              message: successResponseModel.message)));
    });

    on<_GetCheckOut>((event, emit) async {
      emit(state.copyWith(isLoading: true, hasError: false, isDone: false));
      final tokenModel = await SharedPref.getToken();

      final result = await orderRepository.getCheckout(
          idQuery: IdQuery(id: tokenModel.userId));
      result.fold(
          (failure) => emit(state.copyWith(
              isLoading: false, hasError: true, message: failure.message)),
          (getCheckoutResponseModel) => emit(state.copyWith(
              isLoading: false,
              getCheckoutResponseModel: getCheckoutResponseModel)));
    });

    on<_SetAddress>((event, emit) {
      emit(state.copyWith(selecteAddress: event.address));
    });

    on<_CallRazorpay>((event, emit) {});

    on<_SetPaymnetMethod>((event, emit) {
      emit(state.copyWith(selectedPaymentMethod: event.paymentMethod));
    });
  }
}
