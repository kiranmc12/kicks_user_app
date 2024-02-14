import 'package:json_annotation/json_annotation.dart';

part 'inventory_cart.g.dart';

@JsonSerializable()
class InventoryCart {
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
  int? discountedPrice;

  InventoryCart({
    this.productId,
    this.productName,
    this.image,
    this.categoryId,
    this.quantity,
    this.stock,
    this.totalPrice,
    this.discountedPrice,
  });

  factory InventoryCart.fromJson(Map<String, dynamic> json) =>
      _$InventoryCartFromJson(json);

  Map<String, dynamic> toJson() => _$InventoryCartToJson(this);
}
