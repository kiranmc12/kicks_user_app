// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_up_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SignUpModel _$SignUpModelFromJson(Map<String, dynamic> json) => SignUpModel(
      confirmpassword: json['confirmpassword'] as String?,
      email: json['email'] as String?,
      name: json['name'] as String?,
      password: json['password'] as String?,
      phone: json['phone'] as String?,
    );

Map<String, dynamic> _$SignUpModelToJson(SignUpModel instance) =>
    <String, dynamic>{
      'confirmpassword': instance.confirmpassword,
      'email': instance.email,
      'name': instance.name,
      'password': instance.password,
      'phone': instance.phone,
    };
