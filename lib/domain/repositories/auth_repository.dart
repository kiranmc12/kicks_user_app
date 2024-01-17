import 'package:dartz/dartz.dart';
import 'package:kicks_sneakerapp/domain/core/failure/failure.dart';
import 'package:kicks_sneakerapp/domain/models/auth/phone_number_model/phone_number_model.dart';
import 'package:kicks_sneakerapp/domain/models/auth/phone_number_otp_response_model/phone_number_otp_response_model.dart';
import 'package:kicks_sneakerapp/domain/models/auth/sign_in_model/sign_in_model.dart';
import 'package:kicks_sneakerapp/domain/models/auth/sign_in_response_model/sign_in_response_model.dart';
import 'package:kicks_sneakerapp/domain/models/auth/sign_up_model/sign_up_model.dart';
import 'package:kicks_sneakerapp/domain/models/auth/sign_up_response_model/sign_up_response_model.dart';
import 'package:kicks_sneakerapp/domain/models/auth/verify_otp_model/verify_otp_model.dart';
import 'package:kicks_sneakerapp/domain/models/auth/verify_otp_response_model/verify_otp_response_model.dart';

abstract class AuthRepository {
  Future<Either<Failure, SignInResponseModel>> signIn(
      {required SignInModel signInModel});

  Future<Either<Failure, SignUpResponseModel>> signUp(
      {required SignUpModel signUpModel});

  Future<Either<Failure, PhoneNumberOtpResponseModel>> otpLogin(
      {required PhoneNumberModel phoneNumberModel});

  Future<Either<Failure, VerifyOtpResponseModel>> otpVerify(
      {required VerifyOtpModel verfiyOtpModel});
}
