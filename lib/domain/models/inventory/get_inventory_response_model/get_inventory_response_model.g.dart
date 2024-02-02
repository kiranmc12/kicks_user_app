// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_inventory_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetInventoryResponseModel _$GetInventoryResponseModelFromJson(
        Map<String, dynamic> json) =>
    GetInventoryResponseModel(
      statusCode: json['status_code'] as int?,
      message: json['message'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Inventory.fromJson(e as Map<String, dynamic>))
          .toList(),
      error: json['error'],
    );

Map<String, dynamic> _$GetInventoryResponseModelToJson(
        GetInventoryResponseModel instance) =>
    <String, dynamic>{
      'status_code': instance.statusCode,
      'message': instance.message,
      'data': instance.data,
      'error': instance.error,
    };
