import 'package:json_annotation/json_annotation.dart';

part 'datum.g.dart';

@JsonSerializable()
class Coupons {
  @JsonKey(name: 'ID')
  int? id;
  @JsonKey(name: 'CreatedAt')
  String? createdAt;
  @JsonKey(name: 'UpdatedAt')
  String? updatedAt;
  @JsonKey(name: 'DeletedAt')
  dynamic deletedAt;
  String? coupon;
  @JsonKey(name: 'discount_rate')
  int? discountRate;
  bool? valid;

  Coupons({
    this.id,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
    this.coupon,
    this.discountRate,
    this.valid,
  });

  factory Coupons.fromJson(Map<String, dynamic> json) =>
      _$CouponsFromJson(json);

  Map<String, dynamic> toJson() => _$CouponsToJson(this);
}
