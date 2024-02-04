import 'package:json_annotation/json_annotation.dart';

part 'datum.g.dart';

@JsonSerializable()
class Datum {
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

  Datum({
    this.id,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
    this.coupon,
    this.discountRate,
    this.valid,
  });

  factory Datum.fromJson(Map<String, dynamic> json) => _$DatumFromJson(json);

  Map<String, dynamic> toJson() => _$DatumToJson(this);
}
