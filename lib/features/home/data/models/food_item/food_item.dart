import 'package:foodie/features/home/data/models/ingredient/extra_ingredient.dart';
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
  @JsonKey(name: 'ingredients')
  final List<Ingredient> mainIngredients;
  final List<ExtraIngredient> extraIngredients;

  FoodItem({
    required this.title,
    required this.description,
    required this.price,
    required this.deliveryTime,
    required this.images,
    required this.mainIngredients,
    required this.extraIngredients,
  });

  @JsonKey(includeFromJson: false, includeToJson: false)
  late final String id;
  @JsonKey(includeFromJson: false, includeToJson: false)
  int quantity = 0;
  @JsonKey(includeFromJson: false, includeToJson: false)
  int totalPrice = 0;

  factory FoodItem.fromJson(Map<String, dynamic> json) =>
      _$FoodItemFromJson(json);
}
