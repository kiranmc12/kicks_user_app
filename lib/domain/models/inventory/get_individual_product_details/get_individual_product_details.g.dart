// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_individual_product_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetIndividualProductDetails _$GetIndividualProductDetailsFromJson(
        Map<String, dynamic> json) =>
    GetIndividualProductDetails(
      statusCode: json['status_code'] as int?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
      error: json['error'],
    );

Map<String, dynamic> _$GetIndividualProductDetailsToJson(
        GetIndividualProductDetails instance) =>
    <String, dynamic>{
      'status_code': instance.statusCode,
      'message': instance.message,
      'data': instance.data,
      'error': instance.error,
    };
