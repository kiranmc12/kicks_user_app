import 'package:json_annotation/json_annotation.dart';

import 'user_details.dart';

part 'get_user_details_response.g.dart';

@JsonSerializable()
class GetUserDetailsResponse {
  @JsonKey(name: 'status_code')
  int? statusCode;
  String? message;
  @JsonKey(name: 'data')
  UserDetails? userDetails;
  dynamic error;

  GetUserDetailsResponse({
    this.statusCode,
    this.message,
    this.userDetails,
    this.error,
  });

  factory GetUserDetailsResponse.fromJson(Map<String, dynamic> json) {
    return _$GetUserDetailsResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$GetUserDetailsResponseToJson(this);
}
