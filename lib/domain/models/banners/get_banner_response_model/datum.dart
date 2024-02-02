import 'package:json_annotation/json_annotation.dart';

part 'datum.g.dart';

@JsonSerializable()
class Banners {
  @JsonKey(name: 'CategoryID')
  int? categoryId;
  @JsonKey(name: 'CategoryName')
  String? categoryName;
  @JsonKey(name: 'DiscountPercentage')
  int? discountPercentage;
  @JsonKey(name: 'Images')
  List<String>? images;

  Banners({
    this.categoryId,
    this.categoryName,
    this.discountPercentage,
    this.images,
  });

  factory Banners.fromJson(Map<String, dynamic> json) => _$BannersFromJson(json);

  Map<String, dynamic> toJson() => _$BannersToJson(this);
}
