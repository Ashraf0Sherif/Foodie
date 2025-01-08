// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Address _$AddressFromJson(Map<String, dynamic> json) => Address(
      street: json['street'] as String,
      city: json['city'] as String,
      country: json['country'] as String,
      floor: json['floor'] as String,
      building: json['building'] as String,
      apartment: json['apartment'] as String,
    );

Map<String, dynamic> _$AddressToJson(Address instance) => <String, dynamic>{
      'street': instance.street,
      'city': instance.city,
      'country': instance.country,
      'floor': instance.floor,
      'building': instance.building,
      'apartment': instance.apartment,
    };
