// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_cart_query.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateCartQuery _$UpdateCartQueryFromJson(Map<String, dynamic> json) =>
    UpdateCartQuery(
      cartId: json['cart_id'] as int,
      inventoryId: json['inventory_id'] as int,
    );

Map<String, dynamic> _$UpdateCartQueryToJson(UpdateCartQuery instance) =>
    <String, dynamic>{
      'cart_id': instance.cartId,
      'inventory_id': instance.inventoryId,
    };
