import 'package:json_annotation/json_annotation.dart';

part 'place_order_model.g.dart';

@JsonSerializable()
class PlaceOrderModel {
  @JsonKey(name: 'user_id')
  int? userId;
  @JsonKey(name: 'address_id')
  int? addressId;
  @JsonKey(name: 'payment_id')
  int? paymentId;
    @JsonKey(name: 'coupon_id')
  int? couponId;

  PlaceOrderModel({this.userId, this.addressId, this.paymentId, required couponId});

  factory PlaceOrderModel.fromJson(Map<String, dynamic> json) {
    return _$PlaceOrderModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$PlaceOrderModelToJson(this);
}
