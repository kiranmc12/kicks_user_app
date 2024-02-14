import 'package:json_annotation/json_annotation.dart';

part 'edit_phone.g.dart';

@JsonSerializable()
class EditPhone {
  String? phone;

  EditPhone({this.phone});

  factory EditPhone.fromJson(Map<String, dynamic> json) {
    return _$EditPhoneFromJson(json);
  }

  Map<String, dynamic> toJson() => _$EditPhoneToJson(this);
}
