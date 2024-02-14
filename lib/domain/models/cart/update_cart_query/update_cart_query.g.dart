// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_cart_query.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateCartQuery _$UpdateCartQueryFromJson(Map<String, dynamic> json) =>
    UpdateCartQuery(
      cartId: json['id'] as int,
      inventoryId: json['inventory'] as int,
    );

Map<String, dynamic> _$UpdateCartQueryToJson(UpdateCartQuery instance) =>
    <String, dynamic>{
      'id': instance.cartId,
      'inventory': instance.inventoryId,
    };
