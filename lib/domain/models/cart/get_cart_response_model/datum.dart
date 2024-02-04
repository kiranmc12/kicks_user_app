import 'package:json_annotation/json_annotation.dart';

part 'datum.g.dart';

@JsonSerializable()
class Datum {
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

  Datum({
    this.productId,
    this.productName,
    this.image,
    this.categoryId,
    this.quantity,
    this.stock,
    this.totalPrice,
    this.discountedPrice,
  });

  factory Datum.fromJson(Map<String, dynamic> json) => _$DatumFromJson(json);

  Map<String, dynamic> toJson() => _$DatumToJson(this);
}
