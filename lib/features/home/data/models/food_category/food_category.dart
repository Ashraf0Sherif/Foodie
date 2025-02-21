import 'package:freezed_annotation/freezed_annotation.dart';

import '../food_item/food_item.dart';

part 'food_category.g.dart';

@JsonSerializable()
class FoodCategory {
  @JsonKey(name: 'category')
  final String title;
  final String arabicTitle;

  FoodCategory({required this.title, required this.arabicTitle});

  @JsonKey(includeFromJson: false, includeToJson: false)
  late final List<FoodItem> foodItems;
  @JsonKey(includeFromJson: false, includeToJson: false)
  late final String id;

  factory FoodCategory.fromJson(Map<String, dynamic> json) =>
      _$FoodCategoryFromJson(json);
}
