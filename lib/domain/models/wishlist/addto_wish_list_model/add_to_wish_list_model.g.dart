// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_to_wish_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddToWishList _$AddToWishListFromJson(Map<String, dynamic> json) =>
    AddToWishList(
      userId: json['user_id'] as int,
      inventoryId: json['inventory_id'] as int,
    );

Map<String, dynamic> _$AddToWishListToJson(AddToWishList instance) =>
    <String, dynamic>{
      'user_id': instance.userId,
      'inventory_id': instance.inventoryId,
    };
