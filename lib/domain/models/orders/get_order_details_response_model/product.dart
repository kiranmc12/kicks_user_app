import 'package:json_annotation/json_annotation.dart';

part 'product.g.dart';

@JsonSerializable()
class Product {
  @JsonKey(name: 'ProductName')
  String? productName;
  @JsonKey(name: 'Image')
  String? image;
  @JsonKey(name: 'Quantity')
  int? quantity;
  @JsonKey(name: 'Amount')
  int? amount;

  Product({this.productName, this.image, this.quantity, this.amount});

  factory Product.fromJson(Map<String, dynamic> json) {
    return _$ProductFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ProductToJson(this);
}
