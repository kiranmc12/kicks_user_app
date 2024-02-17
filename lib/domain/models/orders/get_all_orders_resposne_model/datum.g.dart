// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'datum.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Datum _$DatumFromJson(Map<String, dynamic> json) => Datum(
      orderDetails: json['OrderDetails'] == null
          ? null
          : OrderDetails.fromJson(json['OrderDetails'] as Map<String, dynamic>),
      images:
          (json['Images'] as List<dynamic>?)?.map((e) => e as String).toList(),
      paymentMethod: json['PaymentMethod'] as String?,
    );

Map<String, dynamic> _$DatumToJson(Datum instance) => <String, dynamic>{
      'OrderDetails': instance.orderDetails,
      'Images': instance.images,
      'PaymentMethod': instance.paymentMethod,
    };
