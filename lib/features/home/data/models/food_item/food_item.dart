import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../ingredient/extra_ingredient.dart';
import '../ingredient/ingredient.dart';
part 'food_item.g.dart';
@JsonSerializable()
class FoodItem {
  final String title;
  final String description;
  final String price;
  final String deliveryTime;
  final List<String> images;
  @JsonKey(fromJson: _timestampToDateTime, toJson: _dateTimeToTimestamp)
  final DateTime createdAt;
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
    required this.createdAt,
  });

  @JsonKey(includeFromJson: false, includeToJson: false)
  late final String id;
  @JsonKey(includeFromJson: false, includeToJson: false)
  int quantity = 0;
  @JsonKey(includeFromJson: false, includeToJson: false)
  int totalPrice = 0;
  @JsonKey(includeFromJson: false, includeToJson: false)
  late final String categoryId;

  factory FoodItem.fromJson(Map<String, dynamic> json) =>
      _$FoodItemFromJson(json);

  Map<String, dynamic> toJson() => _$FoodItemToJson(this);

  static DateTime _timestampToDateTime(dynamic timestamp) {
    return (timestamp as Timestamp).toDate();
  }

  static Timestamp _dateTimeToTimestamp(DateTime dateTime) {
    return Timestamp.fromDate(dateTime);
  }
}
