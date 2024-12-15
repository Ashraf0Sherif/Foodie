import 'package:freezed_annotation/freezed_annotation.dart';

import 'ingredient.dart';

part 'extra_ingredient.g.dart';

@JsonSerializable()
class ExtraIngredient extends Ingredient {
  ExtraIngredient(
      {required super.title,
        required this.price,
        super.isChecked = false});

  final String price;

  factory ExtraIngredient.fromJson(Map<String, dynamic> json) =>
      _$ExtraIngredientFromJson(json);
}