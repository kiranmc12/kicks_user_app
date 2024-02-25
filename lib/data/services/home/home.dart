import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:kicks_sneakerapp/data/services/api_services.dart';
import 'package:kicks_sneakerapp/domain/core/api_endpoints/api_endpoints.dart';
import 'package:kicks_sneakerapp/domain/core/failure/failure.dart';
import 'package:kicks_sneakerapp/domain/models/banners/get_banner_response_model/get_banner_response_model.dart';
import 'package:kicks_sneakerapp/domain/models/category/get_category_response_model/get_category_response_model.dart';
import 'package:kicks_sneakerapp/domain/repositories/home_repository.dart';

class HomeApi implements HomeRespository {
  final ApiServices apiServices = ApiServices(
      dio: Dio(BaseOptions(baseUrl: Apiendpoints.baseUrl)),
      baseUrl: Apiendpoints.baseUrl);
  @override
  Future<Either<Failure, GetBannerResponseModel>> getBanners() async {
    try {
      final response = await apiServices.get(Apiendpoints.banner);
      if (response.statusCode == 200) {
        return Right(GetBannerResponseModel.fromJson(response.data));
      } else {
        return Left(Failure(
            message: GetBannerResponseModel.fromJson(response.data).message!));
      }
    } on DioException catch (dioError) {
      if (dioError.response!.statusCode == 500) {
        return Left(Failure(message: dioError.response?.data['message']?? "Something went wrong"));
      }
      if (dioError.response!.statusCode == 401) {
        return Left(Failure(message: "Token Expired",statuscode: 401));
      }
      log('dio error => ${dioError.message.toString()}');
      return Left(Failure(message: dioError.response?.data['message']?? "Something went wrong"));
    } catch (e) {
      log('error => ${e.toString()}');
      return Left(Failure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, GetCategoryResponseModel>> getCategory() async {
    try {
      final response = await apiServices.get(Apiendpoints.category);
      if (response.statusCode == 200) {
        return Right(GetCategoryResponseModel.fromJson(response.data));
      } else {
        return Left(Failure(
            message:
                GetCategoryResponseModel.fromJson(response.data).message!));
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
