// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_address_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetAddressResponseModel _$GetAddressResponseModelFromJson(
        Map<String, dynamic> json) =>
    GetAddressResponseModel(
      statusCode: json['status_code'] as int?,
      message: json['message'] as String?,
      address: (json['data'] as List<dynamic>?)
          ?.map((e) => Address.fromJson(e as Map<String, dynamic>))
          .toList(),
      error: json['error'],
    );

Map<String, dynamic> _$GetAddressResponseModelToJson(
        GetAddressResponseModel instance) =>
    <String, dynamic>{
      'status_code': instance.statusCode,
      'message': instance.message,
      'data': instance.address,
      'error': instance.error,
    };
