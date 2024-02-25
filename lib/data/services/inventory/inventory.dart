import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:kicks_sneakerapp/data/services/api_services.dart';
import 'package:kicks_sneakerapp/domain/core/api_endpoints/api_endpoints.dart';
import 'package:kicks_sneakerapp/domain/core/failure/failure.dart';
import 'package:kicks_sneakerapp/domain/models/id_query/id_query.dart';
import 'package:kicks_sneakerapp/domain/models/inventory/get_individual_product_details/get_individual_product_details.dart';
import 'package:kicks_sneakerapp/domain/models/inventory/get_inventory_page_query/get_inventory_page_query.dart';
import 'package:kicks_sneakerapp/domain/models/inventory/get_inventory_response_model/get_inventory_response_model.dart';
import 'package:kicks_sneakerapp/domain/models/inventory/search_model/search_model.dart';
import 'package:kicks_sneakerapp/domain/repositories/inventory_respository.dart';

class InventoryApi implements InventoryRepository {
  final ApiServices apiServices = ApiServices(
      dio: Dio(BaseOptions(baseUrl: Apiendpoints.baseUrl)),
      baseUrl: Apiendpoints.baseUrl);
  @override
  Future<Either<Failure, GetIndividualProductDetails>> getIndividualDetails(
      {required IdQuery idQuery}) async {
    try {
      final response = await apiServices.get(Apiendpoints.productDetail,
          queryParameters: idQuery.toJson());
      if (response.statusCode == 200) {
        return Right(GetIndividualProductDetails.fromJson(response.data));
      } else {
        return Left(Failure(
            message:
                GetIndividualProductDetails.fromJson(response.data).message!));
      }
    } on DioException catch (dioError) {
     
      log('dio error => ${dioError.message.toString()}');
      return Left(Failure(message: dioError.response!.data['message']));
    } catch (e) {
      log('error => ${e.toString()}');
      return Left(Failure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, GetInventoryResponseModel>> getInventorys(
      {required GetInventoryPageQuery getInventoryPageQuery}) async {
    try {
      final response = await apiServices.get(Apiendpoints.getProducts,
          queryParameters: getInventoryPageQuery.toJson());
      if (response.statusCode == 200) {
        return Right(GetInventoryResponseModel.fromJson(response.data));
      } else {
        return Left(Failure(
            message:
                GetInventoryResponseModel.fromJson(response.data).message!));
      }
    } on DioException catch (dioError) {
   
      log('dio error => ${dioError.message.toString()}');
      return Left(Failure(message: dioError.response?.data['message']?? "Something went wrong"));
    } catch (e) {
      log('error => ${e.toString()}');
      return Left(Failure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, GetInventoryResponseModel>> search(
      {required SearchModel searchModel}) async {
    try {
      final response = await apiServices.get(Apiendpoints.search,
          data: searchModel.toJson());
      if (response.statusCode == 200) {
        return Right(GetInventoryResponseModel.fromJson(response.data));
      } else {
        return Left(Failure(
            message:
                GetInventoryResponseModel.fromJson(response.data).message!));
      }
    } on DioException catch (dioError) {
    
      log('dio error => ${dioError.message.toString()}');
      return Left(Failure(message: dioError.response!.data['message']));
    } catch (e) {
      log('error => ${e.toString()}');
      return Left(Failure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, GetInventoryResponseModel>> getCategoryInventories(
      {required IdQuery idQurrey}) async {
    try {
      final response = await apiServices.get(Apiendpoints.categoryProducts,
          queryParameters: idQurrey.toJson());
      if (response.statusCode == 200) {
        return Right(GetInventoryResponseModel.fromJson(response.data));
      } else {
        return Left(Failure(
            message:
                GetInventoryResponseModel.fromJson(response.data).message!));
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
