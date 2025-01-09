// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'foodie_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FoodieUser _$FoodieUserFromJson(Map<String, dynamic> json) => FoodieUser(
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      phoneNumber: json['phoneNumber'] as String?,
      address: (json['address'] as List<dynamic>?)
          ?.map((e) => Address.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$FoodieUserToJson(FoodieUser instance) =>
    <String, dynamic>{
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'phoneNumber': instance.phoneNumber,
      'address': instance.address,
      'id': instance.id,
      'email': instance.email,
    };
