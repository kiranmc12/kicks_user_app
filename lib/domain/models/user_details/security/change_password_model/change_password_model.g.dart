// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'change_password_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChangePasswordModel _$ChangePasswordModelFromJson(Map<String, dynamic> json) =>
    ChangePasswordModel(
      oldPassword: json['old_password'] as String?,
      password: json['password'] as String?,
      rePassword: json['re_password'] as String?,
    );

Map<String, dynamic> _$ChangePasswordModelToJson(
        ChangePasswordModel instance) =>
    <String, dynamic>{
      'old_password': instance.oldPassword,
      'password': instance.password,
      're_password': instance.rePassword,
    };
