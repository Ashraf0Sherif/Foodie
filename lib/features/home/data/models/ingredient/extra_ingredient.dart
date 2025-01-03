import 'package:freezed_annotation/freezed_annotation.dart';

import 'ingredient.dart';

part 'extra_ingredient.g.dart';

@JsonSerializable()
class ExtraIngredient extends Ingredient {
  ExtraIngredient(
      {required super.title, required this.price, super.isChecked = false});

  final String price;

  @override
  ExtraIngredient copyWith({
    String? title,
    String? description,
    List<String>? images,
  }) {
    return ExtraIngredient(
      title: title ?? this.title,
      isChecked: isChecked,
      price: price,
    );
  }

  factory ExtraIngredient.fromJson(Map<String, dynamic> json) =>
      _$ExtraIngredientFromJson(json);
}
