// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_order_details_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetOrderDetailsResponseModel _$GetOrderDetailsResponseModelFromJson(
        Map<String, dynamic> json) =>
    GetOrderDetailsResponseModel(
      statusCode: json['status_code'] as int?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
      error: json['error'],
    );

Map<String, dynamic> _$GetOrderDetailsResponseModelToJson(
        GetOrderDetailsResponseModel instance) =>
    <String, dynamic>{
      'status_code': instance.statusCode,
      'message': instance.message,
      'data': instance.data,
      'error': instance.error,
    };
