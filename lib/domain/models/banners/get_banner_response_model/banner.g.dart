// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'banner.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Banner _$BannerFromJson(Map<String, dynamic> json) => Banner(
      categoryId: json['CategoryID'] as int?,
      categoryName: json['CategoryName'] as String?,
      discountPercentage: json['DiscountPercentage'] as int?,
      images: json['Images'],
    );

Map<String, dynamic> _$BannerToJson(Banner instance) => <String, dynamic>{
      'CategoryID': instance.categoryId,
      'CategoryName': instance.categoryName,
      'DiscountPercentage': instance.discountPercentage,
      'Images': instance.images,
    };
