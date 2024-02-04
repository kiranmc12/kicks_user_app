// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'remove_from_cart_query.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RemoveFromCartQuery _$RemoveFromCartQueryFromJson(Map<String, dynamic> json) =>
    RemoveFromCartQuery(
      cartId: json['cart_id'] as int,
      inventoryId: json['inventory_id'] as int,
    );

Map<String, dynamic> _$RemoveFromCartQueryToJson(
        RemoveFromCartQuery instance) =>
    <String, dynamic>{
      'cart_id': instance.cartId,
      'inventory_id': instance.inventoryId,
    };
