// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'datum.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Banners _$BannersFromJson(Map<String, dynamic> json) => Banners(
      categoryId: json['CategoryID'] as int?,
      categoryName: json['CategoryName'] as String?,
      discountPercentage: json['DiscountPercentage'] as int?,
      images:
          (json['Images'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$BannersToJson(Banners instance) => <String, dynamic>{
      'CategoryID': instance.categoryId,
      'CategoryName': instance.categoryName,
      'DiscountPercentage': instance.discountPercentage,
      'Images': instance.images,
    };
