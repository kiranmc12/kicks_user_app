// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'phone_number_otp_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PhoneNumberOtpResponseModel _$PhoneNumberOtpResponseModelFromJson(
        Map<String, dynamic> json) =>
    PhoneNumberOtpResponseModel(
      statusCode: json['status_code'] as int?,
      message: json['message'] as String?,
      data: json['data'],
      error: json['error'] as String?,
    );

Map<String, dynamic> _$PhoneNumberOtpResponseModelToJson(
        PhoneNumberOtpResponseModel instance) =>
    <String, dynamic>{
      'status_code': instance.statusCode,
      'message': instance.message,
      'data': instance.data,
      'error': instance.error,
    };
