import 'package:json_annotation/json_annotation.dart';

part 'update_cart_query.g.dart';

@JsonSerializable()
class UpdateCartQuery {
  @JsonKey(name: 'id')
  int cartId;
  @JsonKey(name: 'inventory')
  int inventoryId;

  UpdateCartQuery({required this.cartId, required this.inventoryId});

  factory UpdateCartQuery.fromJson(Map<String, dynamic> json) {
    return _$UpdateCartQueryFromJson(json);
  }

  Map<String, dynamic> toJson() => _$UpdateCartQueryToJson(this);
}
