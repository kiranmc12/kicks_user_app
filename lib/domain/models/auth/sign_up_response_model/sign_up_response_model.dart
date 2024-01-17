import 'package:json_annotation/json_annotation.dart';

import 'data.dart';

part 'sign_up_response_model.g.dart';

@JsonSerializable()
class SignUpResponseModel {
  @JsonKey(name: 'status_code')
  int? statusCode;
  String? message;
  Data? data;
  dynamic error;

  SignUpResponseModel({
    this.statusCode,
    this.message,
    this.data,
    this.error,
  });

  factory SignUpResponseModel.fromJson(Map<String, dynamic> json) {
    return _$SignUpResponseModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SignUpResponseModelToJson(this);
}
