import 'package:json_annotation/json_annotation.dart';

part 'phone_number_model.g.dart';

@JsonSerializable()
class PhoneNumberModel {
  String? phone;

  PhoneNumberModel({this.phone});

  factory PhoneNumberModel.fromJson(Map<String, dynamic> json) {
    return _$PhoneNumberModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$PhoneNumberModelToJson(this);
}
