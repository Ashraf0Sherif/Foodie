import 'package:freezed_annotation/freezed_annotation.dart';

import '../ingredient/ingredient.dart';

part 'food_item.g.dart';

@JsonSerializable()
class FoodItem {
  final String title;
  final String description;
  final String price;
  final String deliveryTime;

  final List<String> images;

  FoodItem({
    required this.title,
    required this.description,
    required this.price,
    required this.deliveryTime,
    required this.images,
    required this.ingredients,
  });

  @JsonKey(includeFromJson: false, includeToJson: false)
  late final String id;
  final List<Ingredient> ingredients;

  factory FoodItem.fromJson(Map<String, dynamic> json) =>
      _$FoodItemFromJson(json);

}
