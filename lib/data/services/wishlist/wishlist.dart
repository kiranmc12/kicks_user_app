import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:kicks_sneakerapp/data/services/api_services.dart';
import 'package:kicks_sneakerapp/domain/core/api_endpoints/api_endpoints.dart';
import 'package:kicks_sneakerapp/domain/core/failure/failure.dart';
import 'package:kicks_sneakerapp/domain/models/id_query/id_query.dart';
import 'package:kicks_sneakerapp/domain/models/sucess_model/sucess_model/sucess_model.dart';
import 'package:kicks_sneakerapp/domain/models/wishlist/addto_wish_list_model/add_to_wish_list_model.dart';
import 'package:kicks_sneakerapp/domain/models/wishlist/get_wish_list_response_model/get_wish_list_response_model.dart';
import 'package:kicks_sneakerapp/domain/models/wishlist/remove_from_wishlist/remove_from_wishlist_query.dart';
import 'package:kicks_sneakerapp/domain/repositories/wishlist_repository.dart';

class WishListApi extends WishlistRepository {
  final ApiServices apiServices = ApiServices(
      dio: Dio(BaseOptions(baseUrl: Apiendpoints.baseUrl)),
      baseUrl: Apiendpoints.baseUrl);
  @override
  Future<Either<Failure, SucessModel>> addToWishList(
      {required AddToWishList addToWishListModel}) async {
    try {
      final response = await apiServices.post(Apiendpoints.addToWishList,
          data: addToWishListModel.toJson());
      if (response.statusCode == 200 || response.statusCode == 201) {
        return Right(SucessModel.fromJson(response.data));
      } else {
        return Left(
            Failure(message: SucessModel.fromJson(response.data).message!));
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
  Future<Either<Failure, GetWishListResponseModel>> getWishList(
      {required IdQuery idQuery}) async {
    try {
      final response = await apiServices.get(Apiendpoints.getWishList,
          queryParameters: idQuery.toJson());
      if (response.statusCode == 200 || response.statusCode == 201) {
        return Right(GetWishListResponseModel.fromJson(response.data));
      } else {
        return Left(Failure(
            message:
                GetWishListResponseModel.fromJson(response.data).message!));
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
  Future<Either<Failure, SucessModel>> removeFromWishList(
      {required RemoveFromWishListQurrey idQurrey}) async {
    try {
      final response = await apiServices.delete(Apiendpoints.removeFromWishList,
          queryParameters: idQurrey.toJson());
      if (response.statusCode == 200 || response.statusCode == 201) {
        return Right(SucessModel.fromJson(response.data));
      } else {
        return Left(
            Failure(message: SucessModel.fromJson(response.data).message!));
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
