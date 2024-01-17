// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Data _$DataFromJson(Map<String, dynamic> json) => Data(
      users: json['Users'] == null
          ? null
          : Users.fromJson(json['Users'] as Map<String, dynamic>),
      token: json['Token'] as String?,
    );

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'Users': instance.users,
      'Token': instance.token,
    };
