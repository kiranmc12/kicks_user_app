import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kicks_sneakerapp/data/shared_preferences/shared_preferences.dart';
import 'package:kicks_sneakerapp/domain/models/auth/phone_number_model/phone_number_model.dart';
import 'package:kicks_sneakerapp/domain/models/auth/phone_number_otp_response_model/phone_number_otp_response_model.dart';
import 'package:kicks_sneakerapp/domain/models/auth/sign_in_model/sign_in_model.dart';
import 'package:kicks_sneakerapp/domain/models/auth/sign_in_response_model/sign_in_response_model.dart';
import 'package:kicks_sneakerapp/domain/models/auth/sign_up_model/sign_up_model.dart';
import 'package:kicks_sneakerapp/domain/models/auth/sign_up_response_model/sign_up_response_model.dart';
import 'package:kicks_sneakerapp/domain/models/auth/verify_otp_model/verify_otp_model.dart';
import 'package:kicks_sneakerapp/domain/models/auth/verify_otp_response_model/verify_otp_response_model.dart';
import 'package:kicks_sneakerapp/domain/models/token/token_model.dart';
import 'package:kicks_sneakerapp/domain/repositories/auth_repository.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phonecontroller = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  final TextEditingController passwordSignInController =
      TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();
  final TextEditingController otpcontroller = TextEditingController();
  final GlobalKey<FormState> signInKey = GlobalKey<FormState>();
  final GlobalKey<FormState> signUpKey = GlobalKey<FormState>();
  final GlobalKey<FormState> phoneKey = GlobalKey<FormState>();

  final AuthRepository authRepository;

  AuthBloc(this.authRepository) : super(AuthState.initial()) {
    on<_SignIn>((event, emit) async {
      emit(state.copyWith(signInIsLoading: true));
      final result =
          await authRepository.signIn(signInModel: event.signInModel);
      result.fold((failure) {
        emit(state.copyWith(
            signInIsLoading: false,
            signInHasError: true,
            message: failure.message));
      }, (signInResponse) async {
        emailController.clear();
        passwordSignInController.clear();
        phonecontroller.clear();
        emit(state.copyWith(
            signInIsLoading: false,
            signInResponseModel: signInResponse,
            isLoggedIn: true,
            signInHasError: false));
        await SharedPref.setToken(
            tokenModel: TokenModel(
                accessToken: signInResponse.data!.token!,
                userId: signInResponse.data!.users!.id!));
        await SharedPref.setLogin();
      });
    });
    on<_SignUp>((event, emit) async {
      emit(AuthState.initial().copyWith(signUpIsLoading: true));
      final result =
          await authRepository.signUp(signUpModel: event.signUpModel);
      result.fold((failure) {
        emit(state.copyWith(
            signUpIsLoading: false,
            signUpHasError: true,
            message: failure.message));
      }, (signUpResponse) async {
        print(signUpResponse);
        emailController.clear();
        passwordSignInController.clear();
        phonecontroller.clear();
        emit(state.copyWith(
          signUpIsLoading: false,
          signUpResponseModel: signUpResponse,
        ));
        await SharedPref.setToken(
            tokenModel: TokenModel(
                accessToken: signUpResponse.data!.token!,
                userId: signUpResponse.data!.users!.id!));
        await SharedPref.setLogin();
      });
    });

    on<_Obscure>(
        (event, emit) => emit(state.copyWith(isObscure: !state.isObscure)));

    on<_OtpLogin>((event, emit) async {
      emit(AuthState.initial().copyWith(otpIsLoading: true));
      final result = await authRepository.otpLogin(
          phoneNumberModel: event.phoneNumberModel);
      result.fold((failure) {
        emit(state.copyWith(message: failure.message, otpIsLoading: false));
      }, (PhoneNumberOtpResponse) async {
        print(PhoneNumberOtpResponse.data);
        emit(state.copyWith(
            otpIsLoading: false,
            phoneNumberOtpResponseModel: PhoneNumberOtpResponse));
      });
    });

    on<_VerifyOtp>((event, emit) async {
      emit(AuthState.initial().copyWith(verifyOtpIsLoading: true));
      final result =
          await authRepository.otpVerify(verfiyOtpModel: event.verfiyOtpModel);
      result.fold((failure) {
        emit(state.copyWith(
            verifyOtpHasError: true,
            message: failure.message,
            verifyOtpIsLoading: false));
      }, (otpVerifyResponse) async {
        emit(state.copyWith(
            verifyOtpIsLoading: false,
            message: otpVerifyResponse.message,
            verifyOtpResponseModel: otpVerifyResponse));
        await SharedPref.setToken(
            tokenModel: TokenModel(
                accessToken: otpVerifyResponse.data!.token!,
                userId: otpVerifyResponse.data!.users!.id!));
        await SharedPref.setLogin();
      });
    });
    on<_LoggedIn>((event, emit) async {
      final login = await SharedPref.getLogin();
      emit(state.copyWith(isLoggedIn: login));
    });

    on<_SignOut>((event, emit) async {
      await SharedPref.removeLogin();
      emit(AuthState.initial());
    });
  }
}
