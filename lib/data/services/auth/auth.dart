import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:kicks_sneakerapp/application/presentation/utils/constants.dart';
import 'package:kicks_sneakerapp/domain/core/api_endpoints/api_endpoints.dart';
import 'package:kicks_sneakerapp/domain/core/failure/failure.dart';
import 'package:kicks_sneakerapp/domain/models/auth/phone_number_model/phone_number_model.dart';
import 'package:kicks_sneakerapp/domain/models/auth/phone_number_otp_response_model/phone_number_otp_response_model.dart';
import 'package:kicks_sneakerapp/domain/models/auth/sign_in_model/sign_in_model.dart';
import 'package:kicks_sneakerapp/domain/models/auth/sign_in_response_model/sign_in_response_model.dart';
import 'package:kicks_sneakerapp/domain/models/auth/sign_up_model/sign_up_model.dart';
import 'package:kicks_sneakerapp/domain/models/auth/sign_up_response_model/sign_up_response_model.dart';
import 'package:kicks_sneakerapp/domain/models/auth/verify_otp_model/verify_otp_model.dart';
import 'package:kicks_sneakerapp/domain/models/auth/verify_otp_response_model/verify_otp_response_model.dart';

import 'package:kicks_sneakerapp/domain/repositories/auth_repository.dart';

class AuthApi implements AuthRepository {
  final Dio dio = Dio(BaseOptions(baseUrl: Apiendpoints.baseUrl));

  @override
  Future<Either<Failure, PhoneNumberOtpResponseModel>> otpLogin(
      {required PhoneNumberModel phoneNumberModel}) async {
    try {
      final response = await dio.post(Apiendpoints.loginOtp,
          data: phoneNumberModel.toJson());
      if (response.statusCode == 200 || response.statusCode == 201) {
        log('message => ${response.data['message']}');

        return right(PhoneNumberOtpResponseModel.fromJson(response.data));
      } else {
        return left(Failure(
            message:
                PhoneNumberOtpResponseModel.fromJson(response.data).message!));
      }
    } on DioException catch (dioError) {
      log('dio error => ${dioError.message.toString()}');

      return Left(Failure(message: errorMsg));
    } catch (e) {
      log('dio error => ${e.toString()}');
      return Left(Failure(message: errorMsg));
    }
  }

  @override
  Future<Either<Failure, VerifyOtpResponseModel>> otpVerify(
      {required VerifyOtpModel verfiyOtpModel}) async {
    try {
      final response =
          await dio.post(Apiendpoints.verifyOtp, data: verfiyOtpModel.toJson());
      if (response.statusCode == 200 || response.statusCode == 201) {
        return Right(VerifyOtpResponseModel.fromJson(response.data));
      } else {
        return Left(Failure(
            message: VerifyOtpResponseModel.fromJson(response.data).message!));
      }
    } on DioException catch (dioError) {
      final map = dioError.response!.data;
      return Left(Failure(message: map['message']));
    }
  }

  @override
  Future<Either<Failure, SignInResponseModel>> signIn(
      {required SignInModel signInModel}) async {
    try {
      final response =
          await dio.post(Apiendpoints.login, data: signInModel.toJson());
      if (response.statusCode == 200 || response.statusCode == 201) {
        return Right(SignInResponseModel.fromJson(response.data));
      } else {
        return Left(Failure(
            message: SignInResponseModel.fromJson(response.data).message!));
      }
    } on DioException catch (dioError) {
      log('dio error => ${dioError.toString()}');
      return Left(Failure(message: errorMsg));
    } catch (e) {
      log('dio error => ${e.toString()}');
      return Left(Failure(message: errorMsg));
    }
  }

  @override
  Future<Either<Failure, SignUpResponseModel>> signUp(
      {required SignUpModel signUpModel}) async {
    try {
      final response =
          await dio.post(Apiendpoints.signUp, data: signUpModel.toJson());
      if (response.statusCode == 200 || response.statusCode == 201) {
        return Right(SignUpResponseModel.fromJson(response.data));
      } else {
        return Left(Failure(
            message: SignUpResponseModel.fromJson(response.data).message!));
      }
    } on DioException catch (dioError) {
      log('dio error => ${dioError.toString()}');
      return Left(Failure(message: errorMsg));
    } catch (e) {
      log('dio error => ${e.toString()}');
      return Left(Failure(message: errorMsg));
    }
  }
}
