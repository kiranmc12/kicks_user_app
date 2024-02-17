import 'package:json_annotation/json_annotation.dart';

import 'data.dart';

part 'get_order_details_response_model.g.dart';

@JsonSerializable()
class GetOrderDetailsResponseModel {
  @JsonKey(name: 'status_code')
  int? statusCode;
  String? message;
  Data? data;
  dynamic error;

  GetOrderDetailsResponseModel({
    this.statusCode,
    this.message,
    this.data,
    this.error,
  });

  factory GetOrderDetailsResponseModel.fromJson(Map<String, dynamic> json) {
    return _$GetOrderDetailsResponseModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$GetOrderDetailsResponseModelToJson(this);
}
