import 'package:json_annotation/json_annotation.dart';

part 'remove_from_wishlist_query.g.dart';

@JsonSerializable()
class RemoveFromWishListQurrey {
  @JsonKey(name: 'inv_id')
  int? invId;

  RemoveFromWishListQurrey({this.invId});

  factory RemoveFromWishListQurrey.fromJson(Map<String, dynamic> json) {
    return _$RemoveFromWishListQurreyFromJson(json);
  }

  Map<String, dynamic> toJson() => _$RemoveFromWishListQurreyToJson(this);
}
