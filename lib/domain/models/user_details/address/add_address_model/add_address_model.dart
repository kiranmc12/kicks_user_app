import 'package:json_annotation/json_annotation.dart';

part 'add_address_model.g.dart';

@JsonSerializable()
class AddAddressModel {
  String? city;
  @JsonKey(name: 'house_name')
  String? houseName;
  String? name;
  String? pin;
  String? state;
  String? street;
  String? phone;

  AddAddressModel(
      {this.city,
      this.houseName,
      this.name,
      this.pin,
      this.state,
      this.street,
      this.phone});

  factory AddAddressModel.fromJson(Map<String, dynamic> json) {
    return _$AddAddressModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$AddAddressModelToJson(this);
}
