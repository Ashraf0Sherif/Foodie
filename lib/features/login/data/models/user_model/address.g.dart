// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Address _$AddressFromJson(Map<String, dynamic> json) => Address(
      street: json['street'] as String,
      title: json['title'] as String,
      floor: json['floor'] as String?,
      building: json['building'] as String?,
      apartment: json['apartment'] as String?,
    );

Map<String, dynamic> _$AddressToJson(Address instance) => <String, dynamic>{
      'title': instance.title,
      'street': instance.street,
      'floor': instance.floor,
      'building': instance.building,
      'apartment': instance.apartment,
    };
