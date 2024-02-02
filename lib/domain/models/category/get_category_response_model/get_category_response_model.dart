import 'package:json_annotation/json_annotation.dart';

import 'category.dart';

part 'get_category_response_model.g.dart';

@JsonSerializable()
class GetCategoryResponseModel {
  @JsonKey(name: 'status_code')
  int? statusCode;
  String? message;
  List<Category>? data;
  dynamic error;

  GetCategoryResponseModel({
    this.statusCode,
    this.message,
    this.data,
    this.error,
  });

  factory GetCategoryResponseModel.fromJson(Map<String, dynamic> json) {
    return _$GetCategoryResponseModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$GetCategoryResponseModelToJson(this);
}
