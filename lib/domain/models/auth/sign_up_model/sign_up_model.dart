import 'package:json_annotation/json_annotation.dart';

part 'sign_up_model.g.dart';

@JsonSerializable()
class SignUpModel {
  String? confirmpassword;
  String? email;
  String? name;
  String? password;
  String? phone;

  SignUpModel({
    this.confirmpassword,
    this.email,
    this.name,
    this.password,
    this.phone,
  });

  factory SignUpModel.fromJson(Map<String, dynamic> json) {
    return _$SignUpModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SignUpModelToJson(this);
}
