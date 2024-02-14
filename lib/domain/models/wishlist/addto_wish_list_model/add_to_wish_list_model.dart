import 'package:json_annotation/json_annotation.dart';

part 'add_to_wish_list_model.g.dart';

@JsonSerializable()
class AddToWishList {
  @JsonKey(name: 'user_id')
  int userId;
  @JsonKey(name: 'inventory_id')
  int inventoryId;

  AddToWishList({required this.userId, required this.inventoryId});

  factory AddToWishList.fromJson(Map<String, dynamic> json) {
    return _$AddToWishListFromJson(json);
  }

  Map<String, dynamic> toJson() => _$AddToWishListToJson(this);
}
