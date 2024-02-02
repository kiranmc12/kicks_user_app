import 'package:json_annotation/json_annotation.dart';

import 'data.dart';

part 'get_individual_product_details.g.dart';

@JsonSerializable()
class GetIndividualProductDetails {
  @JsonKey(name: 'status_code')
  int? statusCode;
  String? message;
  Data? data;
  dynamic error;

  GetIndividualProductDetails({
    this.statusCode,
    this.message,
    this.data,
    this.error,
  });

  factory GetIndividualProductDetails.fromJson(Map<String, dynamic> json) {
    return _$GetIndividualProductDetailsFromJson(json);
  }

  Map<String, dynamic> toJson() => _$GetIndividualProductDetailsToJson(this);
}
