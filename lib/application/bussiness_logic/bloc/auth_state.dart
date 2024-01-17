part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  factory AuthState({
    required bool signInIsLoading,
    required bool signInHasError,
    required bool signUpIsLoading,
    required bool signUpHasError,
    required bool otpIsLoading,
    required bool otpHasError,
    required bool isObscure,
    required bool isLoggedIn,
    required bool verifyOtpIsLoading,
    required bool verifyOtpHasError,
    String? message,
    PhoneNumberOtpResponseModel? phoneNumberOtpResponseModel,
    SignInResponseModel? signInResponseModel,
    SignUpResponseModel? signUpResponseModel,
    VerifyOtpResponseModel? verifyOtpResponseModel,
  }) = _Initial;

  factory AuthState.initial() => AuthState(
      signInIsLoading: false,
      signInHasError: false,
      signUpIsLoading: false,
      signUpHasError: false,
      otpIsLoading: false,
      otpHasError: false,
      isObscure: true,
      isLoggedIn: false,
      verifyOtpIsLoading: false,
      verifyOtpHasError: false);
}
