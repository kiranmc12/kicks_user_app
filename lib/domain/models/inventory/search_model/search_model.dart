import 'package:json_annotation/json_annotation.dart';

part 'search_model.g.dart';

@JsonSerializable()
class SearchModel {
  String searchkey;

  SearchModel({required this.searchkey});

  factory SearchModel.fromJson(Map<String, dynamic> json) {
    return _$SearchModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SearchModelToJson(this);
}
