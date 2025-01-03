import 'package:freezed_annotation/freezed_annotation.dart';

part 'ingredient.g.dart';

@JsonSerializable()
class Ingredient {
  final String title;
  @JsonKey(includeFromJson: false, includeToJson: false)
  bool isChecked = true;

  Ingredient({required this.title, this.isChecked = true});

  Ingredient copyWith({
    String? title,
    String? description,
    List<String>? images,
  }) {
    return Ingredient(
      title: title ?? this.title,
      isChecked: isChecked,
    );
  }

  factory Ingredient.fromJson(Map<String, dynamic> json) =>
      _$IngredientFromJson(json);
}
