// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'datum.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Inventory _$InventoryFromJson(Map<String, dynamic> json) => Inventory(
      id: json['id'] as int?,
      categoryId: json['category_id'] as int?,
      image: json['image'] as String?,
      productName: json['product_name'] as String?,
      size: json['size'] as String?,
      stock: json['stock'] as int?,
      price: (json['price'] as num?)?.toDouble(),
      ifPresentAtWishlist: json['if_present_at_wishlist'] as bool?,
      ifPresentAtCart: json['if_present_at_cart'] as bool?,
      discountedPrice: (json['discounted_price'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$InventoryToJson(Inventory instance) => <String, dynamic>{
      'id': instance.id,
      'category_id': instance.categoryId,
      'image': instance.image,
      'product_name': instance.productName,
      'size': instance.size,
      'stock': instance.stock,
      'price': instance.price,
      'if_present_at_wishlist': instance.ifPresentAtWishlist,
      'if_present_at_cart': instance.ifPresentAtCart,
      'discounted_price': instance.discountedPrice,
    };
