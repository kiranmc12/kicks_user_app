// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_wish_list_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetWishListResponseModel _$GetWishListResponseModelFromJson(
        Map<String, dynamic> json) =>
    GetWishListResponseModel(
      statusCode: json['status_code'] as int?,
      message: json['message'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Inventory.fromJson(e as Map<String, dynamic>))
          .toList(),
      error: json['error'],
    );

Map<String, dynamic> _$GetWishListResponseModelToJson(
        GetWishListResponseModel instance) =>
    <String, dynamic>{
      'status_code': instance.statusCode,
      'message': instance.message,
      'data': instance.data,
      'error': instance.error,
    };
