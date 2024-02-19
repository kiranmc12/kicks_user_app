import 'package:json_annotation/json_annotation.dart';

part 'product.g.dart';

@JsonSerializable()
class Product {
  @JsonKey(name: 'product_id')
  int? productId;
  @JsonKey(name: 'product_name')
  String? productName;
  String? image;
  @JsonKey(name: 'category_id')
  int? categoryId;
  int? quantity;
  int? stock;
  @JsonKey(name: 'total_price')
  int? totalPrice;
  @JsonKey(name: 'discounted_price')
  double? discountedPrice;

  Product({
    this.productId,
    this.productName,
    this.image,
    this.categoryId,
    this.quantity,
    this.stock,
    this.totalPrice,
    this.discountedPrice,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return _$ProductFromJson(json);
  }

  get amount => null;

  Map<String, dynamic> toJson() => _$ProductToJson(this);
}
