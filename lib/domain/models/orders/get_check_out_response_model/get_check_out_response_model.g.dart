// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_check_out_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetCheckOutResponseModel _$GetCheckOutResponseModelFromJson(
        Map<String, dynamic> json) =>
    GetCheckOutResponseModel(
      statusCode: json['status_code'] as int?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
      error: json['error'],
    );

Map<String, dynamic> _$GetCheckOutResponseModelToJson(
        GetCheckOutResponseModel instance) =>
    <String, dynamic>{
      'status_code': instance.statusCode,
      'message': instance.message,
      'data': instance.data,
      'error': instance.error,
    };
