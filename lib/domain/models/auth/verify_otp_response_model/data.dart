import 'package:json_annotation/json_annotation.dart';

import 'users.dart';

part 'data.g.dart';

@JsonSerializable()
class Data {
  @JsonKey(name: 'Users')
  Users? users;
  @JsonKey(name: 'Token')
  String? token;

  Data({this.users, this.token});

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);
}
