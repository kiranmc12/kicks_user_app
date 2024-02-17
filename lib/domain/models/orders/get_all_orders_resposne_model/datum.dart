import 'package:json_annotation/json_annotation.dart';

import 'order_details.dart';

part 'datum.g.dart';

@JsonSerializable()
class Datum {
  @JsonKey(name: 'OrderDetails')
  OrderDetails? orderDetails;
  @JsonKey(name: 'Images')
  List<String>? images;
  @JsonKey(name: 'PaymentMethod')
  String? paymentMethod;

  Datum({this.orderDetails, this.images, this.paymentMethod});

  factory Datum.fromJson(Map<String, dynamic> json) => _$DatumFromJson(json);

  Map<String, dynamic> toJson() => _$DatumToJson(this);
}
