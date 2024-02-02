import 'package:json_annotation/json_annotation.dart';

part 'get_inventory_page_query.g.dart';

@JsonSerializable()
class GetInventoryPageQuery {
  int? page;

  GetInventoryPageQuery({this.page});

  factory GetInventoryPageQuery.fromJson(Map<String, dynamic> json) {
    return _$GetInventoryPageQueryFromJson(json);
  }

  Map<String, dynamic> toJson() => _$GetInventoryPageQueryToJson(this);
}
