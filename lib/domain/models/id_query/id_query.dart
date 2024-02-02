import 'package:json_annotation/json_annotation.dart';

part 'id_query.g.dart';

@JsonSerializable()
class IdQuery {
  int? id;

  IdQuery({this.id});

  factory IdQuery.fromJson(Map<String, dynamic> json) {
    return _$IdQueryFromJson(json);
  }

  Map<String, dynamic> toJson() => _$IdQueryToJson(this);
}
