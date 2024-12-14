import 'package:freezed_annotation/freezed_annotation.dart';

import 'ingredient.dart';

part 'extra_ingredient.g.dart';

@JsonSerializable()
class ExtraIngredient extends Ingredient {
  ExtraIngredient(
      {required super.title,
      required this.price,
      bool isChecked = false,
      int quantity = 0}) {
    this.isChecked = isChecked;
    this.quantity = quantity;
  }

  final String price;

  factory ExtraIngredient.fromJson(Map<String, dynamic> json) =>
      _$ExtraIngredientFromJson(json);
}
