import 'package:json_annotation/json_annotation.dart';

part 'banner.g.dart';

@JsonSerializable()
class Banner {
  @JsonKey(name: 'CategoryID')
  int? categoryId;
  @JsonKey(name: 'CategoryName')
  String? categoryName;
  @JsonKey(name: 'DiscountPercentage')
  int? discountPercentage;
  @JsonKey(name: 'Images')
  dynamic images;

  Banner({
    this.categoryId,
    this.categoryName,
    this.discountPercentage,
    this.images,
  });

  factory Banner.fromJson(Map<String, dynamic> json) => _$BannerFromJson(json);

  Map<String, dynamic> toJson() => _$BannerToJson(this);
}
