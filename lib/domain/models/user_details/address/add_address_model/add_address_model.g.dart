// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_address_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddAddressModel _$AddAddressModelFromJson(Map<String, dynamic> json) =>
    AddAddressModel(
      city: json['city'] as String?,
      houseName: json['house_name'] as String?,
      name: json['name'] as String?,
      pin: json['pin'] as String?,
      state: json['state'] as String?,
      street: json['street'] as String?,
    );

Map<String, dynamic> _$AddAddressModelToJson(AddAddressModel instance) =>
    <String, dynamic>{
      'city': instance.city,
      'house_name': instance.houseName,
      'name': instance.name,
      'pin': instance.pin,
      'state': instance.state,
      'street': instance.street,
    };
