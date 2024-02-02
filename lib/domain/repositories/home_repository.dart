import 'package:dartz/dartz.dart';
import 'package:kicks_sneakerapp/domain/core/failure/failure.dart';
import 'package:kicks_sneakerapp/domain/models/banners/get_banner_response_model/get_banner_response_model.dart';
import 'package:kicks_sneakerapp/domain/models/category/get_category_response_model/get_category_response_model.dart';

abstract class HomeRespository {
  Future<Either<Failure, GetBannerResponseModel>> getBanners();
  Future<Either<Failure, GetCategoryResponseModel>> getCategory();
}
