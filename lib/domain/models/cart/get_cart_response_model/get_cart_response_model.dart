import 'package:json_annotation/json_annotation.dart';

import 'data.dart';

part 'get_cart_response_model.g.dart';

@JsonSerializable()
class GetCartResponseModel {
  @JsonKey(name: 'status_code')
  int? statusCode;
  String? message;
  Data? data;
  dynamic error;

  GetCartResponseModel({
    this.statusCode,
    this.message,
    this.data,
    this.error,
  });

  factory GetCartResponseModel.fromJson(Map<String, dynamic> json) {
    return _$GetCartResponseModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$GetCartResponseModelToJson(this);
}
