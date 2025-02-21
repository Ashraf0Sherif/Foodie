import 'package:freezed_annotation/freezed_annotation.dart';

part 'ingredient.g.dart';

@JsonSerializable()
class Ingredient {
  final String title;
  final String arabicTitle;
  @JsonKey(includeFromJson: false, includeToJson: false)
  bool isChecked = true;

  Ingredient(
      {required this.title, required this.arabicTitle, this.isChecked = true});

  Ingredient copyWith({
    String? title,
    String? description,
    String? arabicTitle,
    List<String>? images,
  }) {
    return Ingredient(
      title: title ?? this.title,
      arabicTitle: arabicTitle ?? this.arabicTitle,
      isChecked: isChecked,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! Ingredient) return false;
    return title == other.title && isChecked == other.isChecked;
  }

  @override
  int get hashCode => Object.hash(title, isChecked);

  factory Ingredient.fromJson(Map<String, dynamic> json) =>
      _$IngredientFromJson(json);
}
