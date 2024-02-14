import 'package:json_annotation/json_annotation.dart';

part 'sucess_model.g.dart';

@JsonSerializable()
class SucessModel {
  @JsonKey(name: 'status_code')
  int? statusCode;
  String? message;
  dynamic data;
  dynamic error;

  SucessModel({this.statusCode, this.message, this.data, this.error});

  factory SucessModel.fromJson(Map<String, dynamic> json) {
    return _$SucessModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SucessModelToJson(this);
}
