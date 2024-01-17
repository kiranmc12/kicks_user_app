import 'package:json_annotation/json_annotation.dart';

import 'data.dart';

part 'verify_otp_response_model.g.dart';

@JsonSerializable()
class VerifyOtpResponseModel {
  @JsonKey(name: 'status_code')
  int? statusCode;
  String? message;
  Data? data;
  dynamic error;

  VerifyOtpResponseModel({
    this.statusCode,
    this.message,
    this.data,
    this.error,
  });

  factory VerifyOtpResponseModel.fromJson(Map<String, dynamic> json) {
    return _$VerifyOtpResponseModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$VerifyOtpResponseModelToJson(this);
}
