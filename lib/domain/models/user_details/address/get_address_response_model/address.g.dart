// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Address _$AddressFromJson(Map<String, dynamic> json) => Address(
      id: json['id'] as int?,
      userId: json['user_id'] as int?,
      name: json['name'] as String?,
      houseName: json['house_name'] as String?,
      street: json['street'] as String?,
      city: json['city'] as String?,
      state: json['state'] as String?,
      phone: json['phone'] as String?,
      pin: json['pin'] as String?,
      defaultAddress: json['default'] as bool?,
    );

Map<String, dynamic> _$AddressToJson(Address instance) => <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'name': instance.name,
      'house_name': instance.houseName,
      'street': instance.street,
      'city': instance.city,
      'state': instance.state,
      'phone': instance.phone,
      'pin': instance.pin,
      'default': instance.defaultAddress,
    };
