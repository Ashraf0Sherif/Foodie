// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'food_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FoodItem _$FoodItemFromJson(Map<String, dynamic> json) => FoodItem(
      title: json['title'] as String,
      arabicTitle: json['arabicTitle'] as String,
      description: json['description'] as String,
      arabicDescription: json['arabicDescription'] as String,
      price: json['price'] as String,
      deliveryTime: json['deliveryTime'] as String,
      images:
          (json['images'] as List<dynamic>).map((e) => e as String).toList(),
      mainIngredients: (json['ingredients'] as List<dynamic>)
          .map((e) => Ingredient.fromJson(e as Map<String, dynamic>))
          .toList(),
      extraIngredients: (json['extraIngredients'] as List<dynamic>)
          .map((e) => ExtraIngredient.fromJson(e as Map<String, dynamic>))
          .toList(),
      createdAt: FoodItem._timestampToDateTime(json['createdAt']),
    );

Map<String, dynamic> _$FoodItemToJson(FoodItem instance) => <String, dynamic>{
      'title': instance.title,
      'arabicTitle': instance.arabicTitle,
      'description': instance.description,
      'arabicDescription': instance.arabicDescription,
      'price': instance.price,
      'deliveryTime': instance.deliveryTime,
      'images': instance.images,
      'createdAt': FoodItem._dateTimeToTimestamp(instance.createdAt),
      'ingredients': instance.mainIngredients,
      'extraIngredients': instance.extraIngredients,
    };
