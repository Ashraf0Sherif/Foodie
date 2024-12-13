import 'package:freezed_annotation/freezed_annotation.dart';


part 'ingredient.g.dart';

@JsonSerializable()
class Ingredient {
  final String title;
  final String price;

  Ingredient({required this.title, required this.price});

  factory Ingredient.fromJson(Map<String, dynamic> json) =>
      _$IngredientFromJson(json);

}
