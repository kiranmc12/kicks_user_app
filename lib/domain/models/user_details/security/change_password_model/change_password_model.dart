import 'package:json_annotation/json_annotation.dart';

part 'change_password_model.g.dart';

@JsonSerializable()
class ChangePasswordModel {
  @JsonKey(name: 'old_password')
  String? oldPassword;
  String? password;
  @JsonKey(name: 're_password')
  String? rePassword;

  ChangePasswordModel({this.oldPassword, this.password, this.rePassword});

  factory ChangePasswordModel.fromJson(Map<String, dynamic> json) {
    return _$ChangePasswordModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ChangePasswordModelToJson(this);
}
