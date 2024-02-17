// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Data _$DataFromJson(Map<String, dynamic> json) => Data(
      cartId: json['CartID'] as int?,
      addresses: (json['Addresses'] as List<dynamic>?)
          ?.map((e) => Address.fromJson(e as Map<String, dynamic>))
          .toList(),
      products: (json['Products'] as List<dynamic>?)
          ?.map((e) => Product.fromJson(e as Map<String, dynamic>))
          .toList(),
      paymentMethods: (json['PaymentMethods'] as List<dynamic>?)
          ?.map((e) => PaymentMethod.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalPrice: json['TotalPrice'] as int?,
      discountedPrice: (json['DiscountedPrice'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'CartID': instance.cartId,
      'Addresses': instance.addresses,
      'Products': instance.products,
      'PaymentMethods': instance.paymentMethods,
      'TotalPrice': instance.totalPrice,
      'DiscountedPrice': instance.discountedPrice,
    };
