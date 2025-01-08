// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'foodie_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FoodieUser _$FoodieUserFromJson(Map<String, dynamic> json) => FoodieUser(
      id: (json['id'] as num).toInt(),
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      email: json['email'] as String,
      phoneNumber: json['phoneNumber'] as String,
      address: (json['address'] as List<dynamic>)
          .map((e) => Address.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$FoodieUserToJson(FoodieUser instance) =>
    <String, dynamic>{
      'id': instance.id,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'email': instance.email,
      'phoneNumber': instance.phoneNumber,
      'address': instance.address,
    };
