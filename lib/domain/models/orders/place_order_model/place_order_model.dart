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

  PlaceOrderModel({this.userId, this.addressId, this.paymentId});

  factory PlaceOrderModel.fromJson(Map<String, dynamic> json) {
    return _$PlaceOrderModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$PlaceOrderModelToJson(this);
}
