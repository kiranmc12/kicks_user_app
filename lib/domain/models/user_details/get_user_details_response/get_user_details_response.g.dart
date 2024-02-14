// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_user_details_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetUserDetailsResponse _$GetUserDetailsResponseFromJson(
        Map<String, dynamic> json) =>
    GetUserDetailsResponse(
      statusCode: json['status_code'] as int?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
      error: json['error'],
    );

Map<String, dynamic> _$GetUserDetailsResponseToJson(
        GetUserDetailsResponse instance) =>
    <String, dynamic>{
      'status_code': instance.statusCode,
      'message': instance.message,
      'data': instance.data,
      'error': instance.error,
    };
