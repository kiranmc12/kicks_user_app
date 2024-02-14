import 'package:json_annotation/json_annotation.dart';

import 'data.dart';

part 'get_check_out_response_model.g.dart';

@JsonSerializable()
class GetCheckOutResponseModel {
  @JsonKey(name: 'status_code')
  int? statusCode;
  String? message;
  Data? data;
  dynamic error;

  GetCheckOutResponseModel({
    this.statusCode,
    this.message,
    this.data,
    this.error,
  });

  factory GetCheckOutResponseModel.fromJson(Map<String, dynamic> json) {
    return _$GetCheckOutResponseModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$GetCheckOutResponseModelToJson(this);
}
