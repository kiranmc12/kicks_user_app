import 'package:json_annotation/json_annotation.dart';

import 'datum.dart';

part 'get_wish_list_response_model.g.dart';

@JsonSerializable()
class GetWishListResponseModel {
  @JsonKey(name: 'status_code')
  int? statusCode;
  String? message;
  List<Datum>? data;
  dynamic error;

  GetWishListResponseModel({
    this.statusCode,
    this.message,
    this.data,
    this.error,
  });

  factory GetWishListResponseModel.fromJson(Map<String, dynamic> json) {
    return _$GetWishListResponseModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$GetWishListResponseModelToJson(this);
}
