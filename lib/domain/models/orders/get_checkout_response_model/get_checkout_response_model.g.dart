// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_checkout_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetCheckoutResponseModel _$GetCheckoutResponseModelFromJson(
        Map<String, dynamic> json) =>
    GetCheckoutResponseModel(
      statusCode: json['status_code'] as int?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
      error: json['error'],
    );

Map<String, dynamic> _$GetCheckoutResponseModelToJson(
        GetCheckoutResponseModel instance) =>
    <String, dynamic>{
      'status_code': instance.statusCode,
      'message': instance.message,
      'data': instance.data,
      'error': instance.error,
    };
