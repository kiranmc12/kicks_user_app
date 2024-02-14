// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'datum.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Coupons _$CouponsFromJson(Map<String, dynamic> json) => Coupons(
      id: json['ID'] as int?,
      createdAt: json['CreatedAt'] as String?,
      updatedAt: json['UpdatedAt'] as String?,
      deletedAt: json['DeletedAt'],
      coupon: json['coupon'] as String?,
      discountRate: json['discount_rate'] as int?,
      valid: json['valid'] as bool?,
    );

Map<String, dynamic> _$CouponsToJson(Coupons instance) => <String, dynamic>{
      'ID': instance.id,
      'CreatedAt': instance.createdAt,
      'UpdatedAt': instance.updatedAt,
      'DeletedAt': instance.deletedAt,
      'coupon': instance.coupon,
      'discount_rate': instance.discountRate,
      'valid': instance.valid,
    };
