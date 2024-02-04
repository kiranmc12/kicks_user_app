import 'package:json_annotation/json_annotation.dart';

part 'cart_response_model.g.dart';

@JsonSerializable()
class CartResponseModel {
  @JsonKey(name: 'status_code')
  int? statusCode;
  String? message;
  dynamic data;
  dynamic error;

  CartResponseModel({this.statusCode, this.message, this.data, this.error});

  factory CartResponseModel.fromJson(Map<String, dynamic> json) {
    return _$CartResponseModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$CartResponseModelToJson(this);
}
