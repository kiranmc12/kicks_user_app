import 'package:json_annotation/json_annotation.dart';

part 'payment_method.g.dart';

@JsonSerializable()
class PaymentMethod {
  int? id;
  @JsonKey(name: 'payment_name')
  String? paymentName;

  PaymentMethod({this.id, this.paymentName});

  factory PaymentMethod.fromJson(Map<String, dynamic> json) {
    return _$PaymentMethodFromJson(json);
  }

  Map<String, dynamic> toJson() => _$PaymentMethodToJson(this);
}
