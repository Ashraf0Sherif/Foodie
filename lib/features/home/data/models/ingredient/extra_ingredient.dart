import 'package:freezed_annotation/freezed_annotation.dart';

import 'ingredient.dart';

part 'extra_ingredient.g.dart';

@JsonSerializable()
class ExtraIngredient extends Ingredient {
  ExtraIngredient(
      {required super.title,
      required super.arabicTitle,
      required this.price,
      super.isChecked = false});

  final String price;

  @override
  ExtraIngredient copyWith({
    String? title,
    String? arabicTitle,
    String? description,
    List<String>? images,
  }) {
    return ExtraIngredient(
      title: title ?? this.title,
      arabicTitle: arabicTitle ?? this.arabicTitle,
      isChecked: isChecked,
      price: price,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! ExtraIngredient) return false;
    return title == other.title &&
        isChecked == other.isChecked &&
        price == other.price;
  }

  @override
  int get hashCode => Object.hash(title, isChecked, price);

  factory ExtraIngredient.fromJson(Map<String, dynamic> json) =>
      _$ExtraIngredientFromJson(json);
}
