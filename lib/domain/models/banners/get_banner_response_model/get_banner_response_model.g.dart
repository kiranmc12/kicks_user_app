// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_banner_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetBannerResponseModel _$GetBannerResponseModelFromJson(
        Map<String, dynamic> json) =>
    GetBannerResponseModel(
      statusCode: json['status_code'] as int?,
      message: json['message'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Banners.fromJson(e as Map<String, dynamic>))
          .toList(),
      error: json['error'],
    );

Map<String, dynamic> _$GetBannerResponseModelToJson(
        GetBannerResponseModel instance) =>
    <String, dynamic>{
      'status_code': instance.statusCode,
      'message': instance.message,
      'data': instance.data,
      'error': instance.error,
    };
