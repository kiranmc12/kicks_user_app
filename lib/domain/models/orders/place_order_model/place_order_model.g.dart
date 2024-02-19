// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'place_order_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PlaceOrderModel _$PlaceOrderModelFromJson(Map<String, dynamic> json) =>
    PlaceOrderModel(
      userId: json['user_id'] as int?,
      addressId: json['address_id'] as int?,
      paymentId: json['payment_id'] as int?,
      couponId: json['coupon_id'],
    );

Map<String, dynamic> _$PlaceOrderModelToJson(PlaceOrderModel instance) =>
    <String, dynamic>{
      'user_id': instance.userId,
      'address_id': instance.addressId,
      'payment_id': instance.paymentId,
      'coupon_id': instance.couponId,
    };
