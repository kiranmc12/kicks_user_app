part of 'user_bloc.dart';

@freezed
class UserEvent with _$UserEvent {
  const factory UserEvent.getUserDetails() = _GetDetails;
  const factory UserEvent.showList() = _ShowList;
  const factory UserEvent.setDefault({required Address address}) = _SetDefault;
  factory UserEvent.getAddress() = _GetAddress;
  factory UserEvent.addAddress({required AddAddressModel addAddressModel}) =
      _AddAddress;

  factory UserEvent.changeEmail({required EditEmail changeEmail}) =
      _ChangeEmail;

  factory UserEvent.changeName({required EditName changeName}) = _ChangeName;
  factory UserEvent.changePhone({required EditPhone changePhone}) =
      _ChangePhone;
  factory UserEvent.changePassword(
      {required ChangePasswordModel changePassword}) = _ChangePassword;
}
