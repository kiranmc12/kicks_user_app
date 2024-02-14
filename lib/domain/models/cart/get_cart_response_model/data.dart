import 'package:json_annotation/json_annotation.dart';

import 'inventory_cart.dart';

part 'data.g.dart';

@JsonSerializable()
class Data {
  @JsonKey(name: 'ID')
  int? id;
  @JsonKey(name: 'Data')
  List<InventoryCart>? data;

  Data({this.id, this.data});

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);
}
