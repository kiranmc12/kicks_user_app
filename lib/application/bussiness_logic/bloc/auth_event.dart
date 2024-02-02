part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  factory AuthEvent.signUp({required SignUpModel signUpModel}) = _SignUp;
  factory AuthEvent.signIn({required SignInModel signInModel}) = _SignIn;
  factory AuthEvent.signOut() = _SignOut;
  factory AuthEvent.otpLogin(PhoneNumberModel phoneNumberModel) = _OtpLogin;
  factory AuthEvent.verifyOtp(VerifyOtpModel verfiyOtpModel) = _VerifyOtp;
  factory AuthEvent.obscure() = _Obscure;
  factory AuthEvent.loggedIn() = _LoggedIn;
}
