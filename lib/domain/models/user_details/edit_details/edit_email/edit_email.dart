import 'package:json_annotation/json_annotation.dart';

part 'edit_email.g.dart';

@JsonSerializable()
class EditEmail {
  String? email;

  EditEmail({this.email});

  factory EditEmail.fromJson(Map<String, dynamic> json) {
    return _$EditEmailFromJson(json);
  }

  Map<String, dynamic> toJson() => _$EditEmailToJson(this);
}
