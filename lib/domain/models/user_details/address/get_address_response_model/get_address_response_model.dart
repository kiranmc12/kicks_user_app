import 'package:json_annotation/json_annotation.dart';

import 'datum.dart';

part 'get_address_response_model.g.dart';

@JsonSerializable()
class GetAddressResponseModel {
  @JsonKey(name: 'status_code')
  int? statusCode;
  String? message;
  List<Datum>? data;
  dynamic error;

  GetAddressResponseModel({
    this.statusCode,
    this.message,
    this.data,
    this.error,
  });

  factory GetAddressResponseModel.fromJson(Map<String, dynamic> json) {
    return _$GetAddressResponseModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$GetAddressResponseModelToJson(this);
}
