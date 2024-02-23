// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_all_orders_resposne_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetAllOrdersResposneModel _$GetAllOrdersResposneModelFromJson(
        Map<String, dynamic> json) =>
    GetAllOrdersResposneModel(
      statusCode: json['status_code'] as int?,
      message: json['message'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Orders.fromJson(e as Map<String, dynamic>))
          .toList(),
      error: json['error'],
    );

Map<String, dynamic> _$GetAllOrdersResposneModelToJson(
        GetAllOrdersResposneModel instance) =>
    <String, dynamic>{
      'status_code': instance.statusCode,
      'message': instance.message,
      'data': instance.data,
      'error': instance.error,
    };
