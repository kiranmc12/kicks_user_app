import 'package:dartz/dartz.dart';
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

abstract class UserRepository {
  Future<Either<Failure, GetUserDetailsResponse>> getUserDetails(
      {required IdQuery userId});

  Future<Either<Failure, SucessModel>> addAddress(
      {required AddAddressModel addAddressModel, required IdQuery idQuery});

  Future<Either<Failure, GetAddressResponseModel>> getAddress(
      { required IdQuery idQurrey});

        Future<Either<Failure, SucessModel>> changeEmail(
      {required EditEmail editEmail, required IdQuery idQuery});
              Future<Either<Failure, SucessModel>> changePhone(
      {required EditPhone editPhone, required IdQuery idQuery});
              Future<Either<Failure, SucessModel>> changeName(
      {required EditName editName, required IdQuery idQuery});

        Future<Either<Failure, SucessModel>> changePassword(
      {
      required IdQuery idQurrey,
      required ChangePasswordModel changePassword});
}
