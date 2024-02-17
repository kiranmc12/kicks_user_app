import 'package:json_annotation/json_annotation.dart';

import 'datum.dart';

part 'get_all_orders_resposne_model.g.dart';

@JsonSerializable()
class GetAllOrdersResposneModel {
  @JsonKey(name: 'status_code')
  int? statusCode;
  String? message;
  List<Datum>? data;
  dynamic error;

  GetAllOrdersResposneModel({
    this.statusCode,
    this.message,
    this.data,
    this.error,
  });

  factory GetAllOrdersResposneModel.fromJson(Map<String, dynamic> json) {
    return _$GetAllOrdersResposneModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$GetAllOrdersResposneModelToJson(this);
}
