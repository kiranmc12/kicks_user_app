import 'package:json_annotation/json_annotation.dart';

part 'data.g.dart';

@JsonSerializable()
class Data {
  int? id;
  @JsonKey(name: 'category_id')
  int? categoryId;
  String? image;
  @JsonKey(name: 'product_name')
  String? productName;
  String? size;
  int? stock;
  int? price;
  @JsonKey(name: 'if_present_at_wishlist')
  bool? ifPresentAtWishlist;
  @JsonKey(name: 'if_present_at_cart')
  bool? ifPresentAtCart;
  @JsonKey(name: 'discounted_price')
  double? discountedPrice;

  Data({
    this.id,
    this.categoryId,
    this.image,
    this.productName,
    this.size,
    this.stock,
    this.price,
    this.ifPresentAtWishlist,
    this.ifPresentAtCart,
    this.discountedPrice,
  });

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);
}
