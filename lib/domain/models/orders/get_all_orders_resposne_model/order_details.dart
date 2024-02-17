import 'package:json_annotation/json_annotation.dart';

part 'order_details.g.dart';

@JsonSerializable()
class OrderDetails {
  @JsonKey(name: 'ID')
  int? id;
  @JsonKey(name: 'CreatedAt')
  String? createdAt;
  @JsonKey(name: 'UpdatedAt')
  String? updatedAt;
  @JsonKey(name: 'DeletedAt')
  dynamic deletedAt;
  @JsonKey(name: 'user_id')
  int? userId;
  @JsonKey(name: 'address_id')
  int? addressId;
  @JsonKey(name: 'paymentmethod_id')
  int? paymentmethodId;
  @JsonKey(name: 'coupon_used')
  String? couponUsed;
  double? price;
  @JsonKey(name: 'order_status')
  String? orderStatus;
  @JsonKey(name: 'payment_status')
  String? paymentStatus;

  OrderDetails({
    this.id,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
    this.userId,
    this.addressId,
    this.paymentmethodId,
    this.couponUsed,
    this.price,
    this.orderStatus,
    this.paymentStatus,
  });

  factory OrderDetails.fromJson(Map<String, dynamic> json) {
    return _$OrderDetailsFromJson(json);
  }

  Map<String, dynamic> toJson() => _$OrderDetailsToJson(this);
}
