// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Product _$ProductFromJson(Map<String, dynamic> json) => Product(
      productName: json['ProductName'] as String?,
      image: json['Image'] as String?,
      quantity: json['Quantity'] as int?,
      amount: json['Amount'] as int?,
    );

Map<String, dynamic> _$ProductToJson(Product instance) => <String, dynamic>{
      'ProductName': instance.productName,
      'Image': instance.image,
      'Quantity': instance.quantity,
      'Amount': instance.amount,
    };
