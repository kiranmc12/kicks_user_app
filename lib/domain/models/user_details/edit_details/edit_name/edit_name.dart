import 'package:json_annotation/json_annotation.dart';

part 'edit_name.g.dart';

@JsonSerializable()
class EditName {
  String? name;

  EditName({this.name});

  factory EditName.fromJson(Map<String, dynamic> json) {
    return _$EditNameFromJson(json);
  }

  Map<String, dynamic> toJson() => _$EditNameToJson(this);
}
