import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:kicks_sneakerapp/data/services/api_services.dart';
import 'package:kicks_sneakerapp/domain/core/api_endpoints/api_endpoints.dart';
import 'package:kicks_sneakerapp/domain/core/failure/failure.dart';
import 'package:kicks_sneakerapp/domain/models/id_query/id_query.dart';
import 'package:kicks_sneakerapp/domain/models/sucess_model/sucess_model/sucess_model.dart';
import 'package:kicks_sneakerapp/domain/models/user_details/address/add_address_model/add_address_model.dart';
import 'package:kicks_sneakerapp/domain/models/user_details/address/get_address_response_model/get_address_response_model.dart';
import 'package:kicks_sneakerapp/domain/models/user_details/edit_details/edit_email/edit_email.dart';
import 'package:kicks_sneakerapp/domain/models/user_details/edit_details/edit_name/edit_name.dart';
import 'package:kicks_sneakerapp/domain/models/user_details/edit_details/edit_phone/edit_phone.dart';
import 'package:kicks_sneakerapp/domain/models/user_details/get_user_details_response/get_user_details_response.dart';
import 'package:kicks_sneakerapp/domain/models/user_details/security/change_password_model/change_password_model.dart';
import 'package:kicks_sneakerapp/domain/repositories/user_repository.dart';

class UserProfile implements UserRepository {
  final ApiServices apiServices = ApiServices(
      dio: Dio(BaseOptions(baseUrl: Apiendpoints.baseUrl)),
      baseUrl: Apiendpoints.baseUrl);

  @override
  Future<Either<Failure, SucessModel>> addAddress(
      {required AddAddressModel addAddressModel,
      required IdQuery idQuery}) async {
    try {
      final response = await apiServices.post(Apiendpoints.userAddress,
          data: addAddressModel.toJson(), queryParameters: idQuery.toJson());
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
  Future<Either<Failure, SucessModel>> changeEmail(
      {required EditEmail editEmail, required IdQuery idQuery}) async {
    try {
      final response = await apiServices.put(Apiendpoints.editEmail,
          data: editEmail.toJson(), queryParameters: idQuery.toJson());
      if (response.statusCode == 200) {
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
  Future<Either<Failure, SucessModel>> changeName(
      {required EditName editName, required IdQuery idQuery}) async {
    try {
      final response = await apiServices.put(Apiendpoints.editName,
          data: editName.toJson(), queryParameters: idQuery.toJson());
      if (response.statusCode == 200) {
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
  Future<Either<Failure, SucessModel>> changePassword(
      {required IdQuery idQurrey,
      required ChangePasswordModel changePassword}) async {
    try {
      final response = await apiServices.put(Apiendpoints.changePassword,
          data: changePassword.toJson(), queryParameters: idQurrey.toJson());
      if (response.statusCode == 200) {
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
  Future<Either<Failure, SucessModel>> changePhone(
      {required EditPhone editPhone, required IdQuery idQuery}) async {
    try {
      final response = await apiServices.put(Apiendpoints.editPhone,
          data: editPhone.toJson(), queryParameters: idQuery.toJson());
      if (response.statusCode == 200) {
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
  Future<Either<Failure, GetAddressResponseModel>> getAddress(
      {required IdQuery idQurrey}) async {
    try {
      final response = await apiServices.get(Apiendpoints.userAddress,
          queryParameters: idQurrey.toJson());
      if (response.statusCode == 200) {
        return Right(GetAddressResponseModel.fromJson(response.data));
      } else {
        return Left(Failure(
            message: GetAddressResponseModel.fromJson(response.data).message!));
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
  Future<Either<Failure, GetUserDetailsResponse>> getUserDetails(
      {required IdQuery userId}) async {
    try {
      final response = await apiServices.get(Apiendpoints.userDetail,
          queryParameters: userId.toJson());
      if (response.statusCode == 200) {
        return Right(GetUserDetailsResponse.fromJson(response.data));
      } else {
        return Left(Failure(
            message: GetUserDetailsResponse.fromJson(response.data).message!));
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
