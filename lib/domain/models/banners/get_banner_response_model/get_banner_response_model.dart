import 'package:json_annotation/json_annotation.dart';

import 'banner.dart';

part 'get_banner_response_model.g.dart';

@JsonSerializable()
class GetBannerResponseModel {
  @JsonKey(name: 'status_code')
  int? statusCode;
  String? message;
  List<Banner>? data;
  dynamic error;

  GetBannerResponseModel({
    this.statusCode,
    this.message,
    this.data,
    this.error,
  });

  factory GetBannerResponseModel.fromJson(Map<String, dynamic> json) {
    return _$GetBannerResponseModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$GetBannerResponseModelToJson(this);
}
