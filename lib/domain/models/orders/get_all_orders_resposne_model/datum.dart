import 'package:json_annotation/json_annotation.dart';

import 'order_details.dart';

part 'datum.g.dart';

@JsonSerializable()
class Orders {
  @JsonKey(name: 'OrderDetails')
  OrderDetails? orderDetails;
  @JsonKey(name: 'Images')
  List<String>? images;
  @JsonKey(name: 'PaymentMethod')
  String? paymentMethod;

  Orders({this.orderDetails, this.images, this.paymentMethod});

  factory Orders.fromJson(Map<String, dynamic> json) => _$OrdersFromJson(json);

  Map<String, dynamic> toJson() => _$OrdersToJson(this);
}
