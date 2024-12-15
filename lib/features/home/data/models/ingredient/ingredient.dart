import 'package:freezed_annotation/freezed_annotation.dart';

part 'ingredient.g.dart';

@JsonSerializable()
class Ingredient {
  final String title;
  @JsonKey(includeFromJson: false, includeToJson: false)
  bool isChecked = true;
  @JsonKey(includeFromJson: false, includeToJson: false)
  int quantity = 0;

  Ingredient({required this.title, this.isChecked = true, this.quantity = 0});

  factory Ingredient.fromJson(Map<String, dynamic> json) =>
      _$IngredientFromJson(json);
}
