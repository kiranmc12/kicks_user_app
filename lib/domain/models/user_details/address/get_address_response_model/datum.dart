import 'package:json_annotation/json_annotation.dart';

part 'datum.g.dart';

@JsonSerializable()
class Datum {
  int? id;
  @JsonKey(name: 'user_id')
  int? userId;
  String? name;
  @JsonKey(name: 'house_name')
  String? houseName;
  String? street;
  String? city;
  String? state;
  String? phone;
  String? pin;
  @JsonKey(name: 'default')
  bool? datumDefault;

  Datum({
    this.id,
    this.userId,
    this.name,
    this.houseName,
    this.street,
    this.city,
    this.state,
    this.phone,
    this.pin,
    this.datumDefault,
  });

  factory Datum.fromJson(Map<String, dynamic> json) => _$DatumFromJson(json);

  Map<String, dynamic> toJson() => _$DatumToJson(this);
}
