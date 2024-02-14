import 'package:json_annotation/json_annotation.dart';

import 'data.dart';

part 'get_user_details_response.g.dart';

@JsonSerializable()
class GetUserDetailsResponse {
  @JsonKey(name: 'status_code')
  int? statusCode;
  String? message;
  Data? data;
  dynamic error;

  GetUserDetailsResponse({
    this.statusCode,
    this.message,
    this.data,
    this.error,
  });

  factory GetUserDetailsResponse.fromJson(Map<String, dynamic> json) {
    return _$GetUserDetailsResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$GetUserDetailsResponseToJson(this);
}
