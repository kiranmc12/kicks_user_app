import 'package:json_annotation/json_annotation.dart';

import 'address.dart';
import 'product.dart';

part 'data.g.dart';

@JsonSerializable()
class Data {
  @JsonKey(name: 'CartID')
  int? cartId;
  @JsonKey(name: 'Addresses')
  List<Address>? addresses;
  @JsonKey(name: 'Products')
  List<Product>? products;
  @JsonKey(name: 'PaymentMethods')
  dynamic paymentMethods;
  @JsonKey(name: 'TotalPrice')
  int? totalPrice;
  @JsonKey(name: 'DiscountedPrice')
  double? discountedPrice;

  Data({
    this.cartId,
    this.addresses,
    this.products,
    this.paymentMethods,
    this.totalPrice,
    this.discountedPrice,
  });

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);
}
