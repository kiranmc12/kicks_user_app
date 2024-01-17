import 'package:json_annotation/json_annotation.dart';

import 'data.dart';

part 'sign_in_response_model.g.dart';

@JsonSerializable()
class SignInResponseModel {
  @JsonKey(name: 'status_code')
  int? statusCode;
  String? message;
  Data? data;
  dynamic error;

  SignInResponseModel({
    this.statusCode,
    this.message,
    this.data,
    this.error,
  });

  factory SignInResponseModel.fromJson(Map<String, dynamic> json) {
    return _$SignInResponseModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SignInResponseModelToJson(this);
}
