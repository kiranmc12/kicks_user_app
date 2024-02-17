// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderDetails _$OrderDetailsFromJson(Map<String, dynamic> json) => OrderDetails(
      id: json['ID'] as int?,
      createdAt: json['CreatedAt'] as String?,
      updatedAt: json['UpdatedAt'] as String?,
      deletedAt: json['DeletedAt'],
      userId: json['user_id'] as int?,
      addressId: json['address_id'] as int?,
      paymentmethodId: json['paymentmethod_id'] as int?,
      couponUsed: json['coupon_used'] as String?,
      price: (json['price'] as num?)?.toDouble(),
      orderStatus: json['order_status'] as String?,
      paymentStatus: json['payment_status'] as String?,
    );

Map<String, dynamic> _$OrderDetailsToJson(OrderDetails instance) =>
    <String, dynamic>{
      'ID': instance.id,
      'CreatedAt': instance.createdAt,
      'UpdatedAt': instance.updatedAt,
      'DeletedAt': instance.deletedAt,
      'user_id': instance.userId,
      'address_id': instance.addressId,
      'paymentmethod_id': instance.paymentmethodId,
      'coupon_used': instance.couponUsed,
      'price': instance.price,
      'order_status': instance.orderStatus,
      'payment_status': instance.paymentStatus,
    };
