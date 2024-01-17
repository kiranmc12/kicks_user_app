// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SignUpModel signUpModel) signUp,
    required TResult Function(SignInModel signInModel) signIn,
    required TResult Function() signOut,
    required TResult Function(PhoneNumberModel phoneNumberModel) otpLogin,
    required TResult Function(VerifyOtpModel verfiyOtpModel) verifyOtp,
    required TResult Function() obscure,
    required TResult Function() loggedIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SignUpModel signUpModel)? signUp,
    TResult? Function(SignInModel signInModel)? signIn,
    TResult? Function()? signOut,
    TResult? Function(PhoneNumberModel phoneNumberModel)? otpLogin,
    TResult? Function(VerifyOtpModel verfiyOtpModel)? verifyOtp,
    TResult? Function()? obscure,
    TResult? Function()? loggedIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SignUpModel signUpModel)? signUp,
    TResult Function(SignInModel signInModel)? signIn,
    TResult Function()? signOut,
    TResult Function(PhoneNumberModel phoneNumberModel)? otpLogin,
    TResult Function(VerifyOtpModel verfiyOtpModel)? verifyOtp,
    TResult Function()? obscure,
    TResult Function()? loggedIn,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignUp value) signUp,
    required TResult Function(_SignIn value) signIn,
    required TResult Function(_SignOut value) signOut,
    required TResult Function(_OtpLogin value) otpLogin,
    required TResult Function(_VerifyOtp value) verifyOtp,
    required TResult Function(_Obscure value) obscure,
    required TResult Function(_LoggedIn value) loggedIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignUp value)? signUp,
    TResult? Function(_SignIn value)? signIn,
    TResult? Function(_SignOut value)? signOut,
    TResult? Function(_OtpLogin value)? otpLogin,
    TResult? Function(_VerifyOtp value)? verifyOtp,
    TResult? Function(_Obscure value)? obscure,
    TResult? Function(_LoggedIn value)? loggedIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignUp value)? signUp,
    TResult Function(_SignIn value)? signIn,
    TResult Function(_SignOut value)? signOut,
    TResult Function(_OtpLogin value)? otpLogin,
    TResult Function(_VerifyOtp value)? verifyOtp,
    TResult Function(_Obscure value)? obscure,
    TResult Function(_LoggedIn value)? loggedIn,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SignUpImplCopyWith<$Res> {
  factory _$$SignUpImplCopyWith(
          _$SignUpImpl value, $Res Function(_$SignUpImpl) then) =
      __$$SignUpImplCopyWithImpl<$Res>;
  @useResult
  $Res call({SignUpModel signUpModel});
}

/// @nodoc
class __$$SignUpImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$SignUpImpl>
    implements _$$SignUpImplCopyWith<$Res> {
  __$$SignUpImplCopyWithImpl(
      _$SignUpImpl _value, $Res Function(_$SignUpImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? signUpModel = null,
  }) {
    return _then(_$SignUpImpl(
      signUpModel: null == signUpModel
          ? _value.signUpModel
          : signUpModel // ignore: cast_nullable_to_non_nullable
              as SignUpModel,
    ));
  }
}

/// @nodoc

class _$SignUpImpl implements _SignUp {
  _$SignUpImpl({required this.signUpModel});

  @override
  final SignUpModel signUpModel;

  @override
  String toString() {
    return 'AuthEvent.signUp(signUpModel: $signUpModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignUpImpl &&
            (identical(other.signUpModel, signUpModel) ||
                other.signUpModel == signUpModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, signUpModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignUpImplCopyWith<_$SignUpImpl> get copyWith =>
      __$$SignUpImplCopyWithImpl<_$SignUpImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SignUpModel signUpModel) signUp,
    required TResult Function(SignInModel signInModel) signIn,
    required TResult Function() signOut,
    required TResult Function(PhoneNumberModel phoneNumberModel) otpLogin,
    required TResult Function(VerifyOtpModel verfiyOtpModel) verifyOtp,
    required TResult Function() obscure,
    required TResult Function() loggedIn,
  }) {
    return signUp(signUpModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SignUpModel signUpModel)? signUp,
    TResult? Function(SignInModel signInModel)? signIn,
    TResult? Function()? signOut,
    TResult? Function(PhoneNumberModel phoneNumberModel)? otpLogin,
    TResult? Function(VerifyOtpModel verfiyOtpModel)? verifyOtp,
    TResult? Function()? obscure,
    TResult? Function()? loggedIn,
  }) {
    return signUp?.call(signUpModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SignUpModel signUpModel)? signUp,
    TResult Function(SignInModel signInModel)? signIn,
    TResult Function()? signOut,
    TResult Function(PhoneNumberModel phoneNumberModel)? otpLogin,
    TResult Function(VerifyOtpModel verfiyOtpModel)? verifyOtp,
    TResult Function()? obscure,
    TResult Function()? loggedIn,
    required TResult orElse(),
  }) {
    if (signUp != null) {
      return signUp(signUpModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignUp value) signUp,
    required TResult Function(_SignIn value) signIn,
    required TResult Function(_SignOut value) signOut,
    required TResult Function(_OtpLogin value) otpLogin,
    required TResult Function(_VerifyOtp value) verifyOtp,
    required TResult Function(_Obscure value) obscure,
    required TResult Function(_LoggedIn value) loggedIn,
  }) {
    return signUp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignUp value)? signUp,
    TResult? Function(_SignIn value)? signIn,
    TResult? Function(_SignOut value)? signOut,
    TResult? Function(_OtpLogin value)? otpLogin,
    TResult? Function(_VerifyOtp value)? verifyOtp,
    TResult? Function(_Obscure value)? obscure,
    TResult? Function(_LoggedIn value)? loggedIn,
  }) {
    return signUp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignUp value)? signUp,
    TResult Function(_SignIn value)? signIn,
    TResult Function(_SignOut value)? signOut,
    TResult Function(_OtpLogin value)? otpLogin,
    TResult Function(_VerifyOtp value)? verifyOtp,
    TResult Function(_Obscure value)? obscure,
    TResult Function(_LoggedIn value)? loggedIn,
    required TResult orElse(),
  }) {
    if (signUp != null) {
      return signUp(this);
    }
    return orElse();
  }
}

abstract class _SignUp implements AuthEvent {
  factory _SignUp({required final SignUpModel signUpModel}) = _$SignUpImpl;

  SignUpModel get signUpModel;
  @JsonKey(ignore: true)
  _$$SignUpImplCopyWith<_$SignUpImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignInImplCopyWith<$Res> {
  factory _$$SignInImplCopyWith(
          _$SignInImpl value, $Res Function(_$SignInImpl) then) =
      __$$SignInImplCopyWithImpl<$Res>;
  @useResult
  $Res call({SignInModel signInModel});
}

/// @nodoc
class __$$SignInImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$SignInImpl>
    implements _$$SignInImplCopyWith<$Res> {
  __$$SignInImplCopyWithImpl(
      _$SignInImpl _value, $Res Function(_$SignInImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? signInModel = null,
  }) {
    return _then(_$SignInImpl(
      signInModel: null == signInModel
          ? _value.signInModel
          : signInModel // ignore: cast_nullable_to_non_nullable
              as SignInModel,
    ));
  }
}

/// @nodoc

class _$SignInImpl implements _SignIn {
  _$SignInImpl({required this.signInModel});

  @override
  final SignInModel signInModel;

  @override
  String toString() {
    return 'AuthEvent.signIn(signInModel: $signInModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignInImpl &&
            (identical(other.signInModel, signInModel) ||
                other.signInModel == signInModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, signInModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignInImplCopyWith<_$SignInImpl> get copyWith =>
      __$$SignInImplCopyWithImpl<_$SignInImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SignUpModel signUpModel) signUp,
    required TResult Function(SignInModel signInModel) signIn,
    required TResult Function() signOut,
    required TResult Function(PhoneNumberModel phoneNumberModel) otpLogin,
    required TResult Function(VerifyOtpModel verfiyOtpModel) verifyOtp,
    required TResult Function() obscure,
    required TResult Function() loggedIn,
  }) {
    return signIn(signInModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SignUpModel signUpModel)? signUp,
    TResult? Function(SignInModel signInModel)? signIn,
    TResult? Function()? signOut,
    TResult? Function(PhoneNumberModel phoneNumberModel)? otpLogin,
    TResult? Function(VerifyOtpModel verfiyOtpModel)? verifyOtp,
    TResult? Function()? obscure,
    TResult? Function()? loggedIn,
  }) {
    return signIn?.call(signInModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SignUpModel signUpModel)? signUp,
    TResult Function(SignInModel signInModel)? signIn,
    TResult Function()? signOut,
    TResult Function(PhoneNumberModel phoneNumberModel)? otpLogin,
    TResult Function(VerifyOtpModel verfiyOtpModel)? verifyOtp,
    TResult Function()? obscure,
    TResult Function()? loggedIn,
    required TResult orElse(),
  }) {
    if (signIn != null) {
      return signIn(signInModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignUp value) signUp,
    required TResult Function(_SignIn value) signIn,
    required TResult Function(_SignOut value) signOut,
    required TResult Function(_OtpLogin value) otpLogin,
    required TResult Function(_VerifyOtp value) verifyOtp,
    required TResult Function(_Obscure value) obscure,
    required TResult Function(_LoggedIn value) loggedIn,
  }) {
    return signIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignUp value)? signUp,
    TResult? Function(_SignIn value)? signIn,
    TResult? Function(_SignOut value)? signOut,
    TResult? Function(_OtpLogin value)? otpLogin,
    TResult? Function(_VerifyOtp value)? verifyOtp,
    TResult? Function(_Obscure value)? obscure,
    TResult? Function(_LoggedIn value)? loggedIn,
  }) {
    return signIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignUp value)? signUp,
    TResult Function(_SignIn value)? signIn,
    TResult Function(_SignOut value)? signOut,
    TResult Function(_OtpLogin value)? otpLogin,
    TResult Function(_VerifyOtp value)? verifyOtp,
    TResult Function(_Obscure value)? obscure,
    TResult Function(_LoggedIn value)? loggedIn,
    required TResult orElse(),
  }) {
    if (signIn != null) {
      return signIn(this);
    }
    return orElse();
  }
}

abstract class _SignIn implements AuthEvent {
  factory _SignIn({required final SignInModel signInModel}) = _$SignInImpl;

  SignInModel get signInModel;
  @JsonKey(ignore: true)
  _$$SignInImplCopyWith<_$SignInImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignOutImplCopyWith<$Res> {
  factory _$$SignOutImplCopyWith(
          _$SignOutImpl value, $Res Function(_$SignOutImpl) then) =
      __$$SignOutImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignOutImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$SignOutImpl>
    implements _$$SignOutImplCopyWith<$Res> {
  __$$SignOutImplCopyWithImpl(
      _$SignOutImpl _value, $Res Function(_$SignOutImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SignOutImpl implements _SignOut {
  _$SignOutImpl();

  @override
  String toString() {
    return 'AuthEvent.signOut()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SignOutImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SignUpModel signUpModel) signUp,
    required TResult Function(SignInModel signInModel) signIn,
    required TResult Function() signOut,
    required TResult Function(PhoneNumberModel phoneNumberModel) otpLogin,
    required TResult Function(VerifyOtpModel verfiyOtpModel) verifyOtp,
    required TResult Function() obscure,
    required TResult Function() loggedIn,
  }) {
    return signOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SignUpModel signUpModel)? signUp,
    TResult? Function(SignInModel signInModel)? signIn,
    TResult? Function()? signOut,
    TResult? Function(PhoneNumberModel phoneNumberModel)? otpLogin,
    TResult? Function(VerifyOtpModel verfiyOtpModel)? verifyOtp,
    TResult? Function()? obscure,
    TResult? Function()? loggedIn,
  }) {
    return signOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SignUpModel signUpModel)? signUp,
    TResult Function(SignInModel signInModel)? signIn,
    TResult Function()? signOut,
    TResult Function(PhoneNumberModel phoneNumberModel)? otpLogin,
    TResult Function(VerifyOtpModel verfiyOtpModel)? verifyOtp,
    TResult Function()? obscure,
    TResult Function()? loggedIn,
    required TResult orElse(),
  }) {
    if (signOut != null) {
      return signOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignUp value) signUp,
    required TResult Function(_SignIn value) signIn,
    required TResult Function(_SignOut value) signOut,
    required TResult Function(_OtpLogin value) otpLogin,
    required TResult Function(_VerifyOtp value) verifyOtp,
    required TResult Function(_Obscure value) obscure,
    required TResult Function(_LoggedIn value) loggedIn,
  }) {
    return signOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignUp value)? signUp,
    TResult? Function(_SignIn value)? signIn,
    TResult? Function(_SignOut value)? signOut,
    TResult? Function(_OtpLogin value)? otpLogin,
    TResult? Function(_VerifyOtp value)? verifyOtp,
    TResult? Function(_Obscure value)? obscure,
    TResult? Function(_LoggedIn value)? loggedIn,
  }) {
    return signOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignUp value)? signUp,
    TResult Function(_SignIn value)? signIn,
    TResult Function(_SignOut value)? signOut,
    TResult Function(_OtpLogin value)? otpLogin,
    TResult Function(_VerifyOtp value)? verifyOtp,
    TResult Function(_Obscure value)? obscure,
    TResult Function(_LoggedIn value)? loggedIn,
    required TResult orElse(),
  }) {
    if (signOut != null) {
      return signOut(this);
    }
    return orElse();
  }
}

abstract class _SignOut implements AuthEvent {
  factory _SignOut() = _$SignOutImpl;
}

/// @nodoc
abstract class _$$OtpLoginImplCopyWith<$Res> {
  factory _$$OtpLoginImplCopyWith(
          _$OtpLoginImpl value, $Res Function(_$OtpLoginImpl) then) =
      __$$OtpLoginImplCopyWithImpl<$Res>;
  @useResult
  $Res call({PhoneNumberModel phoneNumberModel});
}

/// @nodoc
class __$$OtpLoginImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$OtpLoginImpl>
    implements _$$OtpLoginImplCopyWith<$Res> {
  __$$OtpLoginImplCopyWithImpl(
      _$OtpLoginImpl _value, $Res Function(_$OtpLoginImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumberModel = null,
  }) {
    return _then(_$OtpLoginImpl(
      null == phoneNumberModel
          ? _value.phoneNumberModel
          : phoneNumberModel // ignore: cast_nullable_to_non_nullable
              as PhoneNumberModel,
    ));
  }
}

/// @nodoc

class _$OtpLoginImpl implements _OtpLogin {
  _$OtpLoginImpl(this.phoneNumberModel);

  @override
  final PhoneNumberModel phoneNumberModel;

  @override
  String toString() {
    return 'AuthEvent.otpLogin(phoneNumberModel: $phoneNumberModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OtpLoginImpl &&
            (identical(other.phoneNumberModel, phoneNumberModel) ||
                other.phoneNumberModel == phoneNumberModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phoneNumberModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OtpLoginImplCopyWith<_$OtpLoginImpl> get copyWith =>
      __$$OtpLoginImplCopyWithImpl<_$OtpLoginImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SignUpModel signUpModel) signUp,
    required TResult Function(SignInModel signInModel) signIn,
    required TResult Function() signOut,
    required TResult Function(PhoneNumberModel phoneNumberModel) otpLogin,
    required TResult Function(VerifyOtpModel verfiyOtpModel) verifyOtp,
    required TResult Function() obscure,
    required TResult Function() loggedIn,
  }) {
    return otpLogin(phoneNumberModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SignUpModel signUpModel)? signUp,
    TResult? Function(SignInModel signInModel)? signIn,
    TResult? Function()? signOut,
    TResult? Function(PhoneNumberModel phoneNumberModel)? otpLogin,
    TResult? Function(VerifyOtpModel verfiyOtpModel)? verifyOtp,
    TResult? Function()? obscure,
    TResult? Function()? loggedIn,
  }) {
    return otpLogin?.call(phoneNumberModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SignUpModel signUpModel)? signUp,
    TResult Function(SignInModel signInModel)? signIn,
    TResult Function()? signOut,
    TResult Function(PhoneNumberModel phoneNumberModel)? otpLogin,
    TResult Function(VerifyOtpModel verfiyOtpModel)? verifyOtp,
    TResult Function()? obscure,
    TResult Function()? loggedIn,
    required TResult orElse(),
  }) {
    if (otpLogin != null) {
      return otpLogin(phoneNumberModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignUp value) signUp,
    required TResult Function(_SignIn value) signIn,
    required TResult Function(_SignOut value) signOut,
    required TResult Function(_OtpLogin value) otpLogin,
    required TResult Function(_VerifyOtp value) verifyOtp,
    required TResult Function(_Obscure value) obscure,
    required TResult Function(_LoggedIn value) loggedIn,
  }) {
    return otpLogin(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignUp value)? signUp,
    TResult? Function(_SignIn value)? signIn,
    TResult? Function(_SignOut value)? signOut,
    TResult? Function(_OtpLogin value)? otpLogin,
    TResult? Function(_VerifyOtp value)? verifyOtp,
    TResult? Function(_Obscure value)? obscure,
    TResult? Function(_LoggedIn value)? loggedIn,
  }) {
    return otpLogin?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignUp value)? signUp,
    TResult Function(_SignIn value)? signIn,
    TResult Function(_SignOut value)? signOut,
    TResult Function(_OtpLogin value)? otpLogin,
    TResult Function(_VerifyOtp value)? verifyOtp,
    TResult Function(_Obscure value)? obscure,
    TResult Function(_LoggedIn value)? loggedIn,
    required TResult orElse(),
  }) {
    if (otpLogin != null) {
      return otpLogin(this);
    }
    return orElse();
  }
}

abstract class _OtpLogin implements AuthEvent {
  factory _OtpLogin(final PhoneNumberModel phoneNumberModel) = _$OtpLoginImpl;

  PhoneNumberModel get phoneNumberModel;
  @JsonKey(ignore: true)
  _$$OtpLoginImplCopyWith<_$OtpLoginImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$VerifyOtpImplCopyWith<$Res> {
  factory _$$VerifyOtpImplCopyWith(
          _$VerifyOtpImpl value, $Res Function(_$VerifyOtpImpl) then) =
      __$$VerifyOtpImplCopyWithImpl<$Res>;
  @useResult
  $Res call({VerifyOtpModel verfiyOtpModel});
}

/// @nodoc
class __$$VerifyOtpImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$VerifyOtpImpl>
    implements _$$VerifyOtpImplCopyWith<$Res> {
  __$$VerifyOtpImplCopyWithImpl(
      _$VerifyOtpImpl _value, $Res Function(_$VerifyOtpImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? verfiyOtpModel = null,
  }) {
    return _then(_$VerifyOtpImpl(
      null == verfiyOtpModel
          ? _value.verfiyOtpModel
          : verfiyOtpModel // ignore: cast_nullable_to_non_nullable
              as VerifyOtpModel,
    ));
  }
}

/// @nodoc

class _$VerifyOtpImpl implements _VerifyOtp {
  _$VerifyOtpImpl(this.verfiyOtpModel);

  @override
  final VerifyOtpModel verfiyOtpModel;

  @override
  String toString() {
    return 'AuthEvent.verifyOtp(verfiyOtpModel: $verfiyOtpModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerifyOtpImpl &&
            (identical(other.verfiyOtpModel, verfiyOtpModel) ||
                other.verfiyOtpModel == verfiyOtpModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, verfiyOtpModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VerifyOtpImplCopyWith<_$VerifyOtpImpl> get copyWith =>
      __$$VerifyOtpImplCopyWithImpl<_$VerifyOtpImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SignUpModel signUpModel) signUp,
    required TResult Function(SignInModel signInModel) signIn,
    required TResult Function() signOut,
    required TResult Function(PhoneNumberModel phoneNumberModel) otpLogin,
    required TResult Function(VerifyOtpModel verfiyOtpModel) verifyOtp,
    required TResult Function() obscure,
    required TResult Function() loggedIn,
  }) {
    return verifyOtp(verfiyOtpModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SignUpModel signUpModel)? signUp,
    TResult? Function(SignInModel signInModel)? signIn,
    TResult? Function()? signOut,
    TResult? Function(PhoneNumberModel phoneNumberModel)? otpLogin,
    TResult? Function(VerifyOtpModel verfiyOtpModel)? verifyOtp,
    TResult? Function()? obscure,
    TResult? Function()? loggedIn,
  }) {
    return verifyOtp?.call(verfiyOtpModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SignUpModel signUpModel)? signUp,
    TResult Function(SignInModel signInModel)? signIn,
    TResult Function()? signOut,
    TResult Function(PhoneNumberModel phoneNumberModel)? otpLogin,
    TResult Function(VerifyOtpModel verfiyOtpModel)? verifyOtp,
    TResult Function()? obscure,
    TResult Function()? loggedIn,
    required TResult orElse(),
  }) {
    if (verifyOtp != null) {
      return verifyOtp(verfiyOtpModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignUp value) signUp,
    required TResult Function(_SignIn value) signIn,
    required TResult Function(_SignOut value) signOut,
    required TResult Function(_OtpLogin value) otpLogin,
    required TResult Function(_VerifyOtp value) verifyOtp,
    required TResult Function(_Obscure value) obscure,
    required TResult Function(_LoggedIn value) loggedIn,
  }) {
    return verifyOtp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignUp value)? signUp,
    TResult? Function(_SignIn value)? signIn,
    TResult? Function(_SignOut value)? signOut,
    TResult? Function(_OtpLogin value)? otpLogin,
    TResult? Function(_VerifyOtp value)? verifyOtp,
    TResult? Function(_Obscure value)? obscure,
    TResult? Function(_LoggedIn value)? loggedIn,
  }) {
    return verifyOtp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignUp value)? signUp,
    TResult Function(_SignIn value)? signIn,
    TResult Function(_SignOut value)? signOut,
    TResult Function(_OtpLogin value)? otpLogin,
    TResult Function(_VerifyOtp value)? verifyOtp,
    TResult Function(_Obscure value)? obscure,
    TResult Function(_LoggedIn value)? loggedIn,
    required TResult orElse(),
  }) {
    if (verifyOtp != null) {
      return verifyOtp(this);
    }
    return orElse();
  }
}

abstract class _VerifyOtp implements AuthEvent {
  factory _VerifyOtp(final VerifyOtpModel verfiyOtpModel) = _$VerifyOtpImpl;

  VerifyOtpModel get verfiyOtpModel;
  @JsonKey(ignore: true)
  _$$VerifyOtpImplCopyWith<_$VerifyOtpImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ObscureImplCopyWith<$Res> {
  factory _$$ObscureImplCopyWith(
          _$ObscureImpl value, $Res Function(_$ObscureImpl) then) =
      __$$ObscureImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ObscureImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$ObscureImpl>
    implements _$$ObscureImplCopyWith<$Res> {
  __$$ObscureImplCopyWithImpl(
      _$ObscureImpl _value, $Res Function(_$ObscureImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ObscureImpl implements _Obscure {
  _$ObscureImpl();

  @override
  String toString() {
    return 'AuthEvent.obscure()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ObscureImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SignUpModel signUpModel) signUp,
    required TResult Function(SignInModel signInModel) signIn,
    required TResult Function() signOut,
    required TResult Function(PhoneNumberModel phoneNumberModel) otpLogin,
    required TResult Function(VerifyOtpModel verfiyOtpModel) verifyOtp,
    required TResult Function() obscure,
    required TResult Function() loggedIn,
  }) {
    return obscure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SignUpModel signUpModel)? signUp,
    TResult? Function(SignInModel signInModel)? signIn,
    TResult? Function()? signOut,
    TResult? Function(PhoneNumberModel phoneNumberModel)? otpLogin,
    TResult? Function(VerifyOtpModel verfiyOtpModel)? verifyOtp,
    TResult? Function()? obscure,
    TResult? Function()? loggedIn,
  }) {
    return obscure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SignUpModel signUpModel)? signUp,
    TResult Function(SignInModel signInModel)? signIn,
    TResult Function()? signOut,
    TResult Function(PhoneNumberModel phoneNumberModel)? otpLogin,
    TResult Function(VerifyOtpModel verfiyOtpModel)? verifyOtp,
    TResult Function()? obscure,
    TResult Function()? loggedIn,
    required TResult orElse(),
  }) {
    if (obscure != null) {
      return obscure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignUp value) signUp,
    required TResult Function(_SignIn value) signIn,
    required TResult Function(_SignOut value) signOut,
    required TResult Function(_OtpLogin value) otpLogin,
    required TResult Function(_VerifyOtp value) verifyOtp,
    required TResult Function(_Obscure value) obscure,
    required TResult Function(_LoggedIn value) loggedIn,
  }) {
    return obscure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignUp value)? signUp,
    TResult? Function(_SignIn value)? signIn,
    TResult? Function(_SignOut value)? signOut,
    TResult? Function(_OtpLogin value)? otpLogin,
    TResult? Function(_VerifyOtp value)? verifyOtp,
    TResult? Function(_Obscure value)? obscure,
    TResult? Function(_LoggedIn value)? loggedIn,
  }) {
    return obscure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignUp value)? signUp,
    TResult Function(_SignIn value)? signIn,
    TResult Function(_SignOut value)? signOut,
    TResult Function(_OtpLogin value)? otpLogin,
    TResult Function(_VerifyOtp value)? verifyOtp,
    TResult Function(_Obscure value)? obscure,
    TResult Function(_LoggedIn value)? loggedIn,
    required TResult orElse(),
  }) {
    if (obscure != null) {
      return obscure(this);
    }
    return orElse();
  }
}

abstract class _Obscure implements AuthEvent {
  factory _Obscure() = _$ObscureImpl;
}

/// @nodoc
abstract class _$$LoggedInImplCopyWith<$Res> {
  factory _$$LoggedInImplCopyWith(
          _$LoggedInImpl value, $Res Function(_$LoggedInImpl) then) =
      __$$LoggedInImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoggedInImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$LoggedInImpl>
    implements _$$LoggedInImplCopyWith<$Res> {
  __$$LoggedInImplCopyWithImpl(
      _$LoggedInImpl _value, $Res Function(_$LoggedInImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoggedInImpl implements _LoggedIn {
  _$LoggedInImpl();

  @override
  String toString() {
    return 'AuthEvent.loggedIn()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoggedInImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SignUpModel signUpModel) signUp,
    required TResult Function(SignInModel signInModel) signIn,
    required TResult Function() signOut,
    required TResult Function(PhoneNumberModel phoneNumberModel) otpLogin,
    required TResult Function(VerifyOtpModel verfiyOtpModel) verifyOtp,
    required TResult Function() obscure,
    required TResult Function() loggedIn,
  }) {
    return loggedIn();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SignUpModel signUpModel)? signUp,
    TResult? Function(SignInModel signInModel)? signIn,
    TResult? Function()? signOut,
    TResult? Function(PhoneNumberModel phoneNumberModel)? otpLogin,
    TResult? Function(VerifyOtpModel verfiyOtpModel)? verifyOtp,
    TResult? Function()? obscure,
    TResult? Function()? loggedIn,
  }) {
    return loggedIn?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SignUpModel signUpModel)? signUp,
    TResult Function(SignInModel signInModel)? signIn,
    TResult Function()? signOut,
    TResult Function(PhoneNumberModel phoneNumberModel)? otpLogin,
    TResult Function(VerifyOtpModel verfiyOtpModel)? verifyOtp,
    TResult Function()? obscure,
    TResult Function()? loggedIn,
    required TResult orElse(),
  }) {
    if (loggedIn != null) {
      return loggedIn();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignUp value) signUp,
    required TResult Function(_SignIn value) signIn,
    required TResult Function(_SignOut value) signOut,
    required TResult Function(_OtpLogin value) otpLogin,
    required TResult Function(_VerifyOtp value) verifyOtp,
    required TResult Function(_Obscure value) obscure,
    required TResult Function(_LoggedIn value) loggedIn,
  }) {
    return loggedIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignUp value)? signUp,
    TResult? Function(_SignIn value)? signIn,
    TResult? Function(_SignOut value)? signOut,
    TResult? Function(_OtpLogin value)? otpLogin,
    TResult? Function(_VerifyOtp value)? verifyOtp,
    TResult? Function(_Obscure value)? obscure,
    TResult? Function(_LoggedIn value)? loggedIn,
  }) {
    return loggedIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignUp value)? signUp,
    TResult Function(_SignIn value)? signIn,
    TResult Function(_SignOut value)? signOut,
    TResult Function(_OtpLogin value)? otpLogin,
    TResult Function(_VerifyOtp value)? verifyOtp,
    TResult Function(_Obscure value)? obscure,
    TResult Function(_LoggedIn value)? loggedIn,
    required TResult orElse(),
  }) {
    if (loggedIn != null) {
      return loggedIn(this);
    }
    return orElse();
  }
}

abstract class _LoggedIn implements AuthEvent {
  factory _LoggedIn() = _$LoggedInImpl;
}

/// @nodoc
mixin _$AuthState {
  bool get signInIsLoading => throw _privateConstructorUsedError;
  bool get signInHasError => throw _privateConstructorUsedError;
  bool get signUpIsLoading => throw _privateConstructorUsedError;
  bool get signUpHasError => throw _privateConstructorUsedError;
  bool get otpIsLoading => throw _privateConstructorUsedError;
  bool get otpHasError => throw _privateConstructorUsedError;
  bool get isObscure => throw _privateConstructorUsedError;
  bool get isLoggedIn => throw _privateConstructorUsedError;
  bool get verifyOtpIsLoading => throw _privateConstructorUsedError;
  bool get verifyOtpHasError => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  PhoneNumberOtpResponseModel? get phoneNumberOtpResponseModel =>
      throw _privateConstructorUsedError;
  SignInResponseModel? get signInResponseModel =>
      throw _privateConstructorUsedError;
  SignUpResponseModel? get signUpResponseModel =>
      throw _privateConstructorUsedError;
  VerifyOtpResponseModel? get verifyOtpResponseModel =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthStateCopyWith<AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
  @useResult
  $Res call(
      {bool signInIsLoading,
      bool signInHasError,
      bool signUpIsLoading,
      bool signUpHasError,
      bool otpIsLoading,
      bool otpHasError,
      bool isObscure,
      bool isLoggedIn,
      bool verifyOtpIsLoading,
      bool verifyOtpHasError,
      String? message,
      PhoneNumberOtpResponseModel? phoneNumberOtpResponseModel,
      SignInResponseModel? signInResponseModel,
      SignUpResponseModel? signUpResponseModel,
      VerifyOtpResponseModel? verifyOtpResponseModel});
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? signInIsLoading = null,
    Object? signInHasError = null,
    Object? signUpIsLoading = null,
    Object? signUpHasError = null,
    Object? otpIsLoading = null,
    Object? otpHasError = null,
    Object? isObscure = null,
    Object? isLoggedIn = null,
    Object? verifyOtpIsLoading = null,
    Object? verifyOtpHasError = null,
    Object? message = freezed,
    Object? phoneNumberOtpResponseModel = freezed,
    Object? signInResponseModel = freezed,
    Object? signUpResponseModel = freezed,
    Object? verifyOtpResponseModel = freezed,
  }) {
    return _then(_value.copyWith(
      signInIsLoading: null == signInIsLoading
          ? _value.signInIsLoading
          : signInIsLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      signInHasError: null == signInHasError
          ? _value.signInHasError
          : signInHasError // ignore: cast_nullable_to_non_nullable
              as bool,
      signUpIsLoading: null == signUpIsLoading
          ? _value.signUpIsLoading
          : signUpIsLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      signUpHasError: null == signUpHasError
          ? _value.signUpHasError
          : signUpHasError // ignore: cast_nullable_to_non_nullable
              as bool,
      otpIsLoading: null == otpIsLoading
          ? _value.otpIsLoading
          : otpIsLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      otpHasError: null == otpHasError
          ? _value.otpHasError
          : otpHasError // ignore: cast_nullable_to_non_nullable
              as bool,
      isObscure: null == isObscure
          ? _value.isObscure
          : isObscure // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoggedIn: null == isLoggedIn
          ? _value.isLoggedIn
          : isLoggedIn // ignore: cast_nullable_to_non_nullable
              as bool,
      verifyOtpIsLoading: null == verifyOtpIsLoading
          ? _value.verifyOtpIsLoading
          : verifyOtpIsLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      verifyOtpHasError: null == verifyOtpHasError
          ? _value.verifyOtpHasError
          : verifyOtpHasError // ignore: cast_nullable_to_non_nullable
              as bool,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumberOtpResponseModel: freezed == phoneNumberOtpResponseModel
          ? _value.phoneNumberOtpResponseModel
          : phoneNumberOtpResponseModel // ignore: cast_nullable_to_non_nullable
              as PhoneNumberOtpResponseModel?,
      signInResponseModel: freezed == signInResponseModel
          ? _value.signInResponseModel
          : signInResponseModel // ignore: cast_nullable_to_non_nullable
              as SignInResponseModel?,
      signUpResponseModel: freezed == signUpResponseModel
          ? _value.signUpResponseModel
          : signUpResponseModel // ignore: cast_nullable_to_non_nullable
              as SignUpResponseModel?,
      verifyOtpResponseModel: freezed == verifyOtpResponseModel
          ? _value.verifyOtpResponseModel
          : verifyOtpResponseModel // ignore: cast_nullable_to_non_nullable
              as VerifyOtpResponseModel?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $AuthStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool signInIsLoading,
      bool signInHasError,
      bool signUpIsLoading,
      bool signUpHasError,
      bool otpIsLoading,
      bool otpHasError,
      bool isObscure,
      bool isLoggedIn,
      bool verifyOtpIsLoading,
      bool verifyOtpHasError,
      String? message,
      PhoneNumberOtpResponseModel? phoneNumberOtpResponseModel,
      SignInResponseModel? signInResponseModel,
      SignUpResponseModel? signUpResponseModel,
      VerifyOtpResponseModel? verifyOtpResponseModel});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? signInIsLoading = null,
    Object? signInHasError = null,
    Object? signUpIsLoading = null,
    Object? signUpHasError = null,
    Object? otpIsLoading = null,
    Object? otpHasError = null,
    Object? isObscure = null,
    Object? isLoggedIn = null,
    Object? verifyOtpIsLoading = null,
    Object? verifyOtpHasError = null,
    Object? message = freezed,
    Object? phoneNumberOtpResponseModel = freezed,
    Object? signInResponseModel = freezed,
    Object? signUpResponseModel = freezed,
    Object? verifyOtpResponseModel = freezed,
  }) {
    return _then(_$InitialImpl(
      signInIsLoading: null == signInIsLoading
          ? _value.signInIsLoading
          : signInIsLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      signInHasError: null == signInHasError
          ? _value.signInHasError
          : signInHasError // ignore: cast_nullable_to_non_nullable
              as bool,
      signUpIsLoading: null == signUpIsLoading
          ? _value.signUpIsLoading
          : signUpIsLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      signUpHasError: null == signUpHasError
          ? _value.signUpHasError
          : signUpHasError // ignore: cast_nullable_to_non_nullable
              as bool,
      otpIsLoading: null == otpIsLoading
          ? _value.otpIsLoading
          : otpIsLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      otpHasError: null == otpHasError
          ? _value.otpHasError
          : otpHasError // ignore: cast_nullable_to_non_nullable
              as bool,
      isObscure: null == isObscure
          ? _value.isObscure
          : isObscure // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoggedIn: null == isLoggedIn
          ? _value.isLoggedIn
          : isLoggedIn // ignore: cast_nullable_to_non_nullable
              as bool,
      verifyOtpIsLoading: null == verifyOtpIsLoading
          ? _value.verifyOtpIsLoading
          : verifyOtpIsLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      verifyOtpHasError: null == verifyOtpHasError
          ? _value.verifyOtpHasError
          : verifyOtpHasError // ignore: cast_nullable_to_non_nullable
              as bool,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumberOtpResponseModel: freezed == phoneNumberOtpResponseModel
          ? _value.phoneNumberOtpResponseModel
          : phoneNumberOtpResponseModel // ignore: cast_nullable_to_non_nullable
              as PhoneNumberOtpResponseModel?,
      signInResponseModel: freezed == signInResponseModel
          ? _value.signInResponseModel
          : signInResponseModel // ignore: cast_nullable_to_non_nullable
              as SignInResponseModel?,
      signUpResponseModel: freezed == signUpResponseModel
          ? _value.signUpResponseModel
          : signUpResponseModel // ignore: cast_nullable_to_non_nullable
              as SignUpResponseModel?,
      verifyOtpResponseModel: freezed == verifyOtpResponseModel
          ? _value.verifyOtpResponseModel
          : verifyOtpResponseModel // ignore: cast_nullable_to_non_nullable
              as VerifyOtpResponseModel?,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  _$InitialImpl(
      {required this.signInIsLoading,
      required this.signInHasError,
      required this.signUpIsLoading,
      required this.signUpHasError,
      required this.otpIsLoading,
      required this.otpHasError,
      required this.isObscure,
      required this.isLoggedIn,
      required this.verifyOtpIsLoading,
      required this.verifyOtpHasError,
      this.message,
      this.phoneNumberOtpResponseModel,
      this.signInResponseModel,
      this.signUpResponseModel,
      this.verifyOtpResponseModel});

  @override
  final bool signInIsLoading;
  @override
  final bool signInHasError;
  @override
  final bool signUpIsLoading;
  @override
  final bool signUpHasError;
  @override
  final bool otpIsLoading;
  @override
  final bool otpHasError;
  @override
  final bool isObscure;
  @override
  final bool isLoggedIn;
  @override
  final bool verifyOtpIsLoading;
  @override
  final bool verifyOtpHasError;
  @override
  final String? message;
  @override
  final PhoneNumberOtpResponseModel? phoneNumberOtpResponseModel;
  @override
  final SignInResponseModel? signInResponseModel;
  @override
  final SignUpResponseModel? signUpResponseModel;
  @override
  final VerifyOtpResponseModel? verifyOtpResponseModel;

  @override
  String toString() {
    return 'AuthState(signInIsLoading: $signInIsLoading, signInHasError: $signInHasError, signUpIsLoading: $signUpIsLoading, signUpHasError: $signUpHasError, otpIsLoading: $otpIsLoading, otpHasError: $otpHasError, isObscure: $isObscure, isLoggedIn: $isLoggedIn, verifyOtpIsLoading: $verifyOtpIsLoading, verifyOtpHasError: $verifyOtpHasError, message: $message, phoneNumberOtpResponseModel: $phoneNumberOtpResponseModel, signInResponseModel: $signInResponseModel, signUpResponseModel: $signUpResponseModel, verifyOtpResponseModel: $verifyOtpResponseModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.signInIsLoading, signInIsLoading) ||
                other.signInIsLoading == signInIsLoading) &&
            (identical(other.signInHasError, signInHasError) ||
                other.signInHasError == signInHasError) &&
            (identical(other.signUpIsLoading, signUpIsLoading) ||
                other.signUpIsLoading == signUpIsLoading) &&
            (identical(other.signUpHasError, signUpHasError) ||
                other.signUpHasError == signUpHasError) &&
            (identical(other.otpIsLoading, otpIsLoading) ||
                other.otpIsLoading == otpIsLoading) &&
            (identical(other.otpHasError, otpHasError) ||
                other.otpHasError == otpHasError) &&
            (identical(other.isObscure, isObscure) ||
                other.isObscure == isObscure) &&
            (identical(other.isLoggedIn, isLoggedIn) ||
                other.isLoggedIn == isLoggedIn) &&
            (identical(other.verifyOtpIsLoading, verifyOtpIsLoading) ||
                other.verifyOtpIsLoading == verifyOtpIsLoading) &&
            (identical(other.verifyOtpHasError, verifyOtpHasError) ||
                other.verifyOtpHasError == verifyOtpHasError) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.phoneNumberOtpResponseModel,
                    phoneNumberOtpResponseModel) ||
                other.phoneNumberOtpResponseModel ==
                    phoneNumberOtpResponseModel) &&
            (identical(other.signInResponseModel, signInResponseModel) ||
                other.signInResponseModel == signInResponseModel) &&
            (identical(other.signUpResponseModel, signUpResponseModel) ||
                other.signUpResponseModel == signUpResponseModel) &&
            (identical(other.verifyOtpResponseModel, verifyOtpResponseModel) ||
                other.verifyOtpResponseModel == verifyOtpResponseModel));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      signInIsLoading,
      signInHasError,
      signUpIsLoading,
      signUpHasError,
      otpIsLoading,
      otpHasError,
      isObscure,
      isLoggedIn,
      verifyOtpIsLoading,
      verifyOtpHasError,
      message,
      phoneNumberOtpResponseModel,
      signInResponseModel,
      signUpResponseModel,
      verifyOtpResponseModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);
}

abstract class _Initial implements AuthState {
  factory _Initial(
      {required final bool signInIsLoading,
      required final bool signInHasError,
      required final bool signUpIsLoading,
      required final bool signUpHasError,
      required final bool otpIsLoading,
      required final bool otpHasError,
      required final bool isObscure,
      required final bool isLoggedIn,
      required final bool verifyOtpIsLoading,
      required final bool verifyOtpHasError,
      final String? message,
      final PhoneNumberOtpResponseModel? phoneNumberOtpResponseModel,
      final SignInResponseModel? signInResponseModel,
      final SignUpResponseModel? signUpResponseModel,
      final VerifyOtpResponseModel? verifyOtpResponseModel}) = _$InitialImpl;

  @override
  bool get signInIsLoading;
  @override
  bool get signInHasError;
  @override
  bool get signUpIsLoading;
  @override
  bool get signUpHasError;
  @override
  bool get otpIsLoading;
  @override
  bool get otpHasError;
  @override
  bool get isObscure;
  @override
  bool get isLoggedIn;
  @override
  bool get verifyOtpIsLoading;
  @override
  bool get verifyOtpHasError;
  @override
  String? get message;
  @override
  PhoneNumberOtpResponseModel? get phoneNumberOtpResponseModel;
  @override
  SignInResponseModel? get signInResponseModel;
  @override
  SignUpResponseModel? get signUpResponseModel;
  @override
  VerifyOtpResponseModel? get verifyOtpResponseModel;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
