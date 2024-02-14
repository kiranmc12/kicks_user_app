// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sucess_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SucessModel _$SucessModelFromJson(Map<String, dynamic> json) => SucessModel(
      statusCode: json['status_code'] as int?,
      message: json['message'] as String?,
      data: json['data'],
      error: json['error'],
    );

Map<String, dynamic> _$SucessModelToJson(SucessModel instance) =>
    <String, dynamic>{
      'status_code': instance.statusCode,
      'message': instance.message,
      'data': instance.data,
      'error': instance.error,
    };
