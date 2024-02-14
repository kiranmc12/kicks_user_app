import 'package:json_annotation/json_annotation.dart';

part 'add_to_cart_model.g.dart';

@JsonSerializable()
class AddToCartModel {
  @JsonKey(name: 'user_id')
  int? userId;
  @JsonKey(name: 'inventory_id')
  int inventoryId;

  AddToCartModel({this.userId, required this.inventoryId});

  factory AddToCartModel.fromJson(Map<String, dynamic> json) {
    return _$AddToCartModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$AddToCartModelToJson(this);
}
