import 'package:json_annotation/json_annotation.dart';

import 'address.dart';

part 'get_address_response_model.g.dart';

@JsonSerializable()
class GetAddressResponseModel {
  @JsonKey(name: 'status_code')
  int? statusCode;
  String? message;
  @JsonKey(name: 'data')
  List<Address>? address;
  dynamic error;

  GetAddressResponseModel({
    this.statusCode,
    this.message,
    this.address,
    this.error,
  });

  factory GetAddressResponseModel.fromJson(Map<String, dynamic> json) {
    return _$GetAddressResponseModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$GetAddressResponseModelToJson(this);
}
