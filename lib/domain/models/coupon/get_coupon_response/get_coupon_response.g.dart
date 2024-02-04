// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_coupon_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetCouponResponse _$GetCouponResponseFromJson(Map<String, dynamic> json) =>
    GetCouponResponse(
      statusCode: json['status_code'] as int?,
      message: json['message'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Datum.fromJson(e as Map<String, dynamic>))
          .toList(),
      error: json['error'],
    );

Map<String, dynamic> _$GetCouponResponseToJson(GetCouponResponse instance) =>
    <String, dynamic>{
      'status_code': instance.statusCode,
      'message': instance.message,
      'data': instance.data,
      'error': instance.error,
    };
