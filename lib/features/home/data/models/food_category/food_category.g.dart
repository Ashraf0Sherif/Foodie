// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'food_category.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FoodCategory _$FoodCategoryFromJson(Map<String, dynamic> json) => FoodCategory(
      title: json['category'] as String,
      arabicTitle: json['arabicTitle'] as String,
    );

Map<String, dynamic> _$FoodCategoryToJson(FoodCategory instance) =>
    <String, dynamic>{
      'category': instance.title,
      'arabicTitle': instance.arabicTitle,
    };
