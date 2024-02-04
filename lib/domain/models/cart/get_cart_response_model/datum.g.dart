// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'datum.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Datum _$DatumFromJson(Map<String, dynamic> json) => Datum(
      productId: json['product_id'] as int?,
      productName: json['product_name'] as String?,
      image: json['image'] as String?,
      categoryId: json['category_id'] as int?,
      quantity: json['quantity'] as int?,
      stock: json['stock'] as int?,
      totalPrice: json['total_price'] as int?,
      discountedPrice: json['discounted_price'] as int?,
    );

Map<String, dynamic> _$DatumToJson(Datum instance) => <String, dynamic>{
      'product_id': instance.productId,
      'product_name': instance.productName,
      'image': instance.image,
      'category_id': instance.categoryId,
      'quantity': instance.quantity,
      'stock': instance.stock,
      'total_price': instance.totalPrice,
      'discounted_price': instance.discountedPrice,
    };
