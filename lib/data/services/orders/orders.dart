import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:kicks_sneakerapp/data/services/api_services.dart';
import 'package:kicks_sneakerapp/domain/core/api_endpoints/api_endpoints.dart';
import 'package:kicks_sneakerapp/domain/core/failure/failure.dart';
import 'package:kicks_sneakerapp/domain/models/id_query/id_query.dart';
import 'package:kicks_sneakerapp/domain/models/orders/get_all_orders_resposne_model/get_all_orders_resposne_model.dart';
import 'package:kicks_sneakerapp/domain/models/orders/get_checkout_response_model/get_checkout_response_model.dart';
import 'package:kicks_sneakerapp/domain/models/orders/get_order_details_response_model/get_order_details_response_model.dart';
import 'package:kicks_sneakerapp/domain/models/orders/place_order_model/place_order_model.dart';
import 'package:kicks_sneakerapp/domain/models/sucess_model/sucess_model/sucess_model.dart';
import 'package:kicks_sneakerapp/domain/repositories/order_repository.dart';

class Orderapi implements OrderRepository {
  final ApiServices apiServices = ApiServices(
      dio: Dio(BaseOptions(baseUrl: Apiendpoints.baseUrl)),
      baseUrl: Apiendpoints.baseUrl);

  @override
  Future<Either<Failure, SucessModel>> cancelOrder({required IdQuery idQuery}) async{
   try{
    final response=await apiServices.delete(Apiendpoints.cancelOrder,queryParameters:idQuery.toJson());
    if(response.statusCode == 200) {
      return Right(SucessModel.fromJson(response.data));
    }else{
      return Left(Failure(message: SucessModel.fromJson(response.data).message!));
    }
  }on DioException catch (dioError) {
      if (dioError.response!.statusCode == 500) {
        return Left(Failure(message: dioError.response!.data['message']));
      }
      log('dio error => ${dioError.message.toString()}');
      return Left(Failure(message: dioError.response!.data['message']));
    } catch (e) {
      log('error => ${e.toString()}');
      return Left(Failure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, GetCheckoutResponseModel>> getCheckout({required IdQuery idQuery}) async {
  try{
    final response=await apiServices.get(Apiendpoints.checkOut,queryParameters:idQuery.toJson());
    if(response.statusCode == 200) {
      return Right(GetCheckoutResponseModel.fromJson(response.data));
    }else{
      return Left(Failure(message: GetCheckoutResponseModel.fromJson(response.data).message!));
    }
  }on DioException catch (dioError) {
      if (dioError.response!.statusCode == 500) {
        return Left(Failure(message: dioError.response!.data['message']));
      }
      log('dio error => ${dioError.message.toString()}');
      return Left(Failure(message: dioError.response!.data['message']));
    } catch (e) {
      log('error => ${e.toString()}');
      return Left(Failure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, GetOrderDetailsResponseModel>> getOrderDetails({required int orderId}) async {
     try{
    final response=await apiServices.get(Apiendpoints.orderDetails.replaceAll('{id}',orderId.toString()));
    if(response.statusCode == 200) {
      return Right(GetOrderDetailsResponseModel.fromJson(response.data));
    }else{
      return Left(Failure(message: GetCheckoutResponseModel.fromJson(response.data).message!));
    }
  }on DioException catch (dioError) {
      if (dioError.response!.statusCode == 500) {
        return Left(Failure(message: dioError.response!.data['message']));
      }
      log('dio error => ${dioError.message.toString()}');
      return Left(Failure(message: dioError.response!.data['message']));
    } catch (e) {
      log('error => ${e.toString()}');
      return Left(Failure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, GetAllOrdersResposneModel>> getOrders({required IdQuery idQuery}) async {
    try{
    final response=await apiServices.get(Apiendpoints.getOrders,queryParameters:idQuery.toJson());
    if(response.statusCode == 200) {
      return Right(GetAllOrdersResposneModel.fromJson(response.data));
    }else{
      return Left(Failure(message: GetAllOrdersResposneModel.fromJson(response.data).message!));
    }
  }on DioException catch (dioError) {
      if (dioError.response!.statusCode == 500) {
        return Left(Failure(message: dioError.response!.data['message']));
      }
      log('dio error => ${dioError.message.toString()}');
      return Left(Failure(message: dioError.response!.data['message']));
    } catch (e) {
      log('error => ${e.toString()}');
      return Left(Failure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, SucessModel>> placeOrder({required PlaceOrderModel placeOrderModel}) async{
   try{
    final response=await apiServices.post(Apiendpoints.checkOutOrder,data: placeOrderModel.toJson());
    if(response.statusCode == 200) {
      return Right(SucessModel.fromJson(response.data));
    }else{
      return Left(Failure(message: SucessModel.fromJson(response.data).message!));
    }
  }on DioException catch (dioError) {
      if (dioError.response!.statusCode == 500) {
        return Left(Failure(message: dioError.response!.data['message']));
      }
      log('dio error => ${dioError.message.toString()}');
      return Left(Failure(message: dioError.response!.data['message']));
    } catch (e) {
      log('error => ${e.toString()}');
      return Left(Failure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, SucessModel>> returnOrder({required IdQuery idQuery}) async {
   try{
    final response=await apiServices.post(Apiendpoints.returnOrder,queryParameters: idQuery.toJson());
    if(response.statusCode == 200) {
      return Right(SucessModel.fromJson(response.data));
    }else{
      return Left(Failure(message: SucessModel.fromJson(response.data).message!));
    }
  }on DioException catch (dioError) {
      if (dioError.response!.statusCode == 500) {
        return Left(Failure(message: dioError.response!.data['message']));
      }
      log('dio error => ${dioError.message.toString()}');
      return Left(Failure(message: dioError.response!.data['message']));
    } catch (e) {
      log('error => ${e.toString()}');
      return Left(Failure(message: e.toString()));
    }
  }
      
}
