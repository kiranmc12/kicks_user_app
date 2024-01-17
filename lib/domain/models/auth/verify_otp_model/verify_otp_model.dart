import 'package:json_annotation/json_annotation.dart';

part 'verify_otp_model.g.dart';

@JsonSerializable()
class VerifyOtpModel {
  String? code;
  String? phone;

  VerifyOtpModel({this.code, this.phone});

  factory VerifyOtpModel.fromJson(Map<String, dynamic> json) {
    return _$VerifyOtpModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$VerifyOtpModelToJson(this);
}
