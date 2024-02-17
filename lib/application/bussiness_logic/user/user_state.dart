part of 'user_bloc.dart';

@freezed
class UserState with _$UserState {
  const factory UserState(
      {required bool isloading,
      required bool hasError,
      required bool isDone,
      String? message,
      required bool showList,
      UserDetails? userDetails,
      List<Address>? address}) = _Initial;

  factory UserState.initial() => const UserState(
      isloading: true, hasError: false, isDone: false, showList: false);
}
