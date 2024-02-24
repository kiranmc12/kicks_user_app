import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kicks_sneakerapp/data/shared_preferences/shared_preferences.dart';
import 'package:kicks_sneakerapp/domain/models/id_query/id_query.dart';
import 'package:kicks_sneakerapp/domain/models/user_details/address/add_address_model/add_address_model.dart';
import 'package:kicks_sneakerapp/domain/models/user_details/address/get_address_response_model/address.dart';
import 'package:kicks_sneakerapp/domain/models/user_details/edit_details/edit_email/edit_email.dart';
import 'package:kicks_sneakerapp/domain/models/user_details/edit_details/edit_name/edit_name.dart';
import 'package:kicks_sneakerapp/domain/models/user_details/edit_details/edit_phone/edit_phone.dart';
import 'package:kicks_sneakerapp/domain/models/user_details/get_user_details_response/user_details.dart';
import 'package:kicks_sneakerapp/domain/models/user_details/security/change_password_model/change_password_model.dart';
import 'package:kicks_sneakerapp/domain/repositories/user_repository.dart';

part 'user_event.dart';
part 'user_state.dart';
part 'user_bloc.freezed.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  final TextEditingController changeNameController = TextEditingController();
  final TextEditingController changeEmailController = TextEditingController();
  final TextEditingController changePhoneController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController newPasswordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController houseController = TextEditingController();
  final TextEditingController streetController = TextEditingController();
  final TextEditingController cityController = TextEditingController();
  final TextEditingController stateController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController pinController = TextEditingController();
  final GlobalKey<FormState> changeDetailskey = GlobalKey<FormState>();
  final UserRepository userRepository;
  Address? defaultAddress;

  UserBloc(this.userRepository) : super(UserState.initial()) {
    on<_GetDetails>((event, emit) async {
      emit(state.copyWith(isloading: true, hasError: false, isDone: false,));
      final tokenModel = await SharedPref.getToken();
      final result = await userRepository.getUserDetails(
          userId: IdQuery(id: tokenModel.userId));
      result.fold(
          (failure) => emit(state.copyWith(
              isloading: false,
              hasError: true,
              message: failure.message)), (getUserDetailsResponse) {
        changeNameController.text = getUserDetailsResponse.userDetails!.name!;
        changeEmailController.text = getUserDetailsResponse.userDetails!.email!;
        changePhoneController.text = getUserDetailsResponse.userDetails!.phone!;
        emit(state.copyWith(
            isloading: false, userDetails: getUserDetailsResponse.userDetails,message: null));
      });
    });

    on<_GetAddress>((event, emit) async {
      emit(state.copyWith(isloading: true, hasError: false, isDone: false));
      final tokenModel = await SharedPref.getToken();
      final result = await userRepository.getAddress(
          idQurrey: IdQuery(id: tokenModel.userId));
      result.fold(
          (failure) => emit(state.copyWith(
              isloading: false,
              hasError: true,
              message: failure.message)), (getAddressResponse) {
        print(getAddressResponse.address);
        defaultAddress = getAddressResponse.address != null &&
                getAddressResponse.address!.isNotEmpty
            ? getAddressResponse.address!
                .firstWhere((element) => element.defaultAddress!)
            : null;
        emit(state.copyWith(
            isloading: false, address: getAddressResponse.address));
      });
    });

    on<_AddAddress>((event, emit) async {
      emit(state.copyWith(isDone: true, hasError: false, isloading: true));
      final tokenModel = await SharedPref.getToken();
      final result = await userRepository.addAddress(
          addAddressModel: event.addAddressModel,
          idQuery: IdQuery(id: tokenModel.userId));
      result.fold(
          (failure) => emit(state.copyWith(
              isloading: false,
              hasError: true,
              message: failure.message)), (success) {
        emit(state.copyWith(
            isloading: false, isDone: true, message: success.message));
        nameController.clear();
        houseController.clear();
        streetController.clear();
        cityController.clear();
        stateController.clear();
        phoneController.clear();
        pinController.clear();
        add(UserEvent.getAddress());
      });
    });

    on<_ChangeEmail>((event, emit) async {
      emit(state.copyWith(isloading: true, hasError: false, isDone: false));
      final tokenModel = await SharedPref.getToken();
      final result = await userRepository.changeEmail(
          editEmail: event.changeEmail,
          idQuery: IdQuery(id: tokenModel.userId));
      result.fold(
          (failure) => emit(state.copyWith(
              isloading: false,
              hasError: true,
              message: failure.message)), (sucess) {
        changeEmailController.clear();
        emit(state.copyWith(
            isloading: false, isDone: true, message: sucess.message));
      });
    });

    on<_ChangePhone>((event, emit) async {
      emit(state.copyWith(isloading: true, hasError: false, isDone: false));
      final tokenModel = await SharedPref.getToken();
      final result = await userRepository.changePhone(
          editPhone: event.changePhone,
          idQuery: IdQuery(id: tokenModel.userId));
      result.fold(
          (failure) => emit(state.copyWith(
              isloading: false,
              hasError: true,
              message: failure.message)), (sucess) {
        changePhoneController.clear();
        emit(state.copyWith(
            isloading: false, isDone: true, message: sucess.message));
      });
    });

    on<_ChangeName>((event, emit) async {
      emit(state.copyWith(isloading: true, hasError: false, isDone: false));
      final tokenModel = await SharedPref.getToken();
      final result = await userRepository.changeName(
          editName: event.changeName, idQuery: IdQuery(id: tokenModel.userId));
      result.fold((failure) {
        emit(state.copyWith(
            isloading: false, hasError: true, message: failure.message));
      }, (sucess) {
        changeNameController.text = state.userDetails!.name!;
        emit(state.copyWith(
            isloading: false, isDone: true, message: sucess.message));
      });
    });

    on<_ChangePassword>((event, emit) async {
      emit(state.copyWith(isloading: true, hasError: false, isDone: false));
      final tokenModel = await SharedPref.getToken();
      final result = await userRepository.changePassword(
          changePassword: event.changePassword,
          idQurrey: IdQuery(id: tokenModel.userId));
      result.fold(
          (failure) => emit(state.copyWith(
              isloading: false,
              hasError: true,
              message: failure.message)), (sucess) {
        passwordController.clear();
        newPasswordController.clear();
        confirmPasswordController.clear();
        emit(state.copyWith(
            passwordChanged: true,
            isloading: false,
            isDone: true,
            message: sucess.message));
      });
    });

    on<_ShowList>(
        (event, emit) => emit(state.copyWith(showList: !state.showList)));

    on<_SetDefault>((event, emit) {
      defaultAddress = event.address;
      emit(state.copyWith(showList: !state.showList));
    });
  }
}
