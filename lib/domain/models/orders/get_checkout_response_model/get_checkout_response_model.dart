import 'package:json_annotation/json_annotation.dart';

import 'data.dart';

part 'get_checkout_response_model.g.dart';

@JsonSerializable()
class GetCheckoutResponseModel {
  @JsonKey(name: 'status_code')
  int? statusCode;
  String? message;
  Data? data;
  dynamic error;

  GetCheckoutResponseModel({
    this.statusCode,
    this.message,
    this.data,
    this.error,
  });

  factory GetCheckoutResponseModel.fromJson(Map<String, dynamic> json) {
    return _$GetCheckoutResponseModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$GetCheckoutResponseModelToJson(this);
}
