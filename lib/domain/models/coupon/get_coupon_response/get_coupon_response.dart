import 'package:json_annotation/json_annotation.dart';

import 'datum.dart';

part 'get_coupon_response.g.dart';

@JsonSerializable()
class GetCouponResponse {
  @JsonKey(name: 'status_code')
  int? statusCode;
  String? message;
  List<Coupons>? data;
  dynamic error;

  GetCouponResponse({this.statusCode, this.message, this.data, this.error});

  factory GetCouponResponse.fromJson(Map<String, dynamic> json) {
    return _$GetCouponResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$GetCouponResponseToJson(this);
}
