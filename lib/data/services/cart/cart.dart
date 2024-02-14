import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:kicks_sneakerapp/data/services/api_services.dart';
import 'package:kicks_sneakerapp/domain/core/api_endpoints/api_endpoints.dart';
import 'package:kicks_sneakerapp/domain/core/failure/failure.dart';
import 'package:kicks_sneakerapp/domain/models/cart/add_to_cart_model/add_to_cart_model.dart';
import 'package:kicks_sneakerapp/domain/models/cart/cart_response_model/cart_response_model.dart';
import 'package:kicks_sneakerapp/domain/models/cart/get_cart_response_model/get_cart_response_model.dart';
import 'package:kicks_sneakerapp/domain/models/cart/remove_from_cart_query/remove_from_cart_query.dart';
import 'package:kicks_sneakerapp/domain/models/cart/update_cart_query/update_cart_query.dart';
import 'package:kicks_sneakerapp/domain/models/coupon/get_coupon_response/get_coupon_response.dart';
import 'package:kicks_sneakerapp/domain/models/id_query/id_query.dart';
import 'package:kicks_sneakerapp/domain/repositories/cart_repository.dart';

class CartApi implements CartRepository {
  final ApiServices apiServices = ApiServices(
      dio: Dio(BaseOptions(baseUrl: Apiendpoints.baseUrl)),
      baseUrl: Apiendpoints.baseUrl);

  @override
  Future<Either<Failure, CartResponseModel>> addToCart(
      {required AddToCartModel addToCartModel}) async {
    try {
      final response = await apiServices.post(Apiendpoints.addToCart,
          data: addToCartModel.toJson());
      if (response.statusCode == 200) {
        return Right(CartResponseModel.fromJson(response.data));
      } else {
        return Left(Failure(
            message: CartResponseModel.fromJson(response.data).message!));
      }
    } on DioException catch (dioError) {
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
  Future<Either<Failure, GetCartResponseModel>> getCart(
      {required IdQuery idQuery}) async {
    try {
      final response = await apiServices.get(Apiendpoints.cart,
          queryParameters: idQuery.toJson());
      if (response.statusCode == 200) {
        return Right(GetCartResponseModel.fromJson(response.data));
      } else {
        return Left(Failure(
            message: CartResponseModel.fromJson(response.data).message!));
      }
    } on DioException catch (dioError) {
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
  Future<Either<Failure, GetCouponResponse>> getCoupons() async {
    try {
      final response = await apiServices.get(Apiendpoints.coupon);
      if (response.statusCode == 200) {
        return Right(GetCouponResponse.fromJson(response.data));
      } else {
        return Left(Failure(
            message: CartResponseModel.fromJson(response.data).message!));
      }
    } on DioException catch (dioError) {
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
  Future<Either<Failure, CartResponseModel>> removeFromCart(
      {required RemoveFromCartQuery removeFromCartQuery}) async {
    try {
      final response = await apiServices.delete(Apiendpoints.removeFromCart,
          queryParameters: removeFromCartQuery.toJson());
      if (response.statusCode == 200) {
        return Right(CartResponseModel.fromJson(response.data));
      } else {
        return Left(Failure(
            message: CartResponseModel.fromJson(response.data).message!));
      }
    } on DioException catch (dioError) {
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
  Future<Either<Failure, CartResponseModel>> updateQuantityMinus(
      {required UpdateCartQuery updateCartQuery}) async {
    try {
      final response = await apiServices.put(Apiendpoints.updateQuantityMinus,
          queryParameters: updateCartQuery.toJson());
      if (response.statusCode == 200) {
        return Right(CartResponseModel.fromJson(response.data));
      } else {
        return Left(Failure(
            message: CartResponseModel.fromJson(response.data).message!));
      }
    } on DioException catch (dioError) {
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
  Future<Either<Failure, CartResponseModel>> updateQuantityPlus(
      {required UpdateCartQuery updateCartQuery}) async {
    try {
      final response = await apiServices.put(Apiendpoints.updateQuantityPlus,
          queryParameters: updateCartQuery.toJson());
      if (response.statusCode == 200) {
        return Right(CartResponseModel.fromJson(response.data));
      } else {
        return Left(Failure(
            message: CartResponseModel.fromJson(response.data).message!));
      }
    } on DioException catch (dioError) {
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
