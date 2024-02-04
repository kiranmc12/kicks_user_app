import 'package:json_annotation/json_annotation.dart';

part 'remove_from_cart_query.g.dart';

@JsonSerializable()
class RemoveFromCartQuery {
  @JsonKey(name: 'cart_id')
  int cartId;
  @JsonKey(name: 'inventory_id')
  int inventoryId;

  RemoveFromCartQuery({required this.cartId, required this.inventoryId});

  factory RemoveFromCartQuery.fromJson(Map<String, dynamic> json) {
    return _$RemoveFromCartQueryFromJson(json);
  }

  Map<String, dynamic> toJson() => _$RemoveFromCartQueryToJson(this);
}
