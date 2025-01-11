// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'foodie_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FoodieUser _$FoodieUserFromJson(Map<String, dynamic> json) => FoodieUser(
      phoneNumber: json['phoneNumber'] as String?,
      address: (json['address'] as List<dynamic>?)
          ?.map((e) => Address.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalOrders: (json['totalOrders'] as num).toInt(),
      totalSpent: (json['totalSpent'] as num).toDouble(),
    );

Map<String, dynamic> _$FoodieUserToJson(FoodieUser instance) =>
    <String, dynamic>{
      'totalOrders': instance.totalOrders,
      'totalSpent': instance.totalSpent,
      'phoneNumber': instance.phoneNumber,
      'address': instance.address,
      'id': instance.id,
      'email': instance.email,
      'username': instance.username,
    };
