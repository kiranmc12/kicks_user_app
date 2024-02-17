import 'package:dartz/dartz.dart';
import 'package:kicks_sneakerapp/domain/core/failure/failure.dart';
import 'package:kicks_sneakerapp/domain/models/id_query/id_query.dart';
import 'package:kicks_sneakerapp/domain/models/orders/get_all_orders_resposne_model/get_all_orders_resposne_model.dart';
import 'package:kicks_sneakerapp/domain/models/orders/get_checkout_response_model/get_checkout_response_model.dart';
import 'package:kicks_sneakerapp/domain/models/orders/get_order_details_response_model/get_order_details_response_model.dart';
import 'package:kicks_sneakerapp/domain/models/orders/place_order_model/place_order_model.dart';
import 'package:kicks_sneakerapp/domain/models/sucess_model/sucess_model/sucess_model.dart';

abstract class OrderRepository {
  Future<Either<Failure, GetCheckoutResponseModel>> getCheckout(
      {required IdQuery idQuery});
  Future<Either<Failure, SucessModel>> cancelOrder({required IdQuery idQuery});
  Future<Either<Failure, SucessModel>> returnOrder({required IdQuery idQuery});

  Future<Either<Failure, SucessModel>> placeOrder(
      {required PlaceOrderModel placeOrderModel});

  Future<Either<Failure, GetAllOrdersResposneModel>> getOrders(
      {required IdQuery idQuery});

  Future<Either<Failure, GetOrderDetailsResponseModel>> getOrderDetails(
      {required int orderId});
}
