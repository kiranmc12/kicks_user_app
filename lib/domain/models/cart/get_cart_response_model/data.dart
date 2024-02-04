import 'package:json_annotation/json_annotation.dart';

import 'datum.dart';

part 'data.g.dart';

@JsonSerializable()
class Data {
  @JsonKey(name: 'ID')
  int? id;
  @JsonKey(name: 'Data')
  List<Datum>? data;

  Data({this.id, this.data});

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);
}
