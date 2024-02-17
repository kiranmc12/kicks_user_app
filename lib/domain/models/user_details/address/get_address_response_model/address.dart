import 'package:json_annotation/json_annotation.dart';

part 'address.g.dart';

@JsonSerializable()
class Address {
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
  bool? defaultAddress;

  Address({
    this.id,
    this.userId,
    this.name,
    this.houseName,
    this.street,
    this.city,
    this.state,
    this.phone,
    this.pin,
    this.defaultAddress,
  });

  factory Address.fromJson(Map<String, dynamic> json) =>
      _$AddressFromJson(json);

  Map<String, dynamic> toJson() => _$AddressToJson(this);
}
