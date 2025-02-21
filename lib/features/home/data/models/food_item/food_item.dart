import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../ingredient/extra_ingredient.dart';
import '../ingredient/ingredient.dart';

part 'food_item.g.dart';

@JsonSerializable()
class FoodItem {
  final String title;
  final String arabicTitle;
  final String description;
  final String arabicDescription;
  final String price;
  final String deliveryTime;
  final List<String> images;
  @JsonKey(fromJson: _timestampToDateTime, toJson: _dateTimeToTimestamp)
  final DateTime createdAt;
  @JsonKey(name: 'ingredients')
  final List<Ingredient> mainIngredients;
  final List<ExtraIngredient> extraIngredients;

  FoodItem copyWith({
    String? title,
    String? arabicTitle,
    String? description,
    String? arabicDescription,
    String? price,
    String? deliveryTime,
    List<String>? images,
    DateTime? createdAt,
    List<Ingredient>? mainIngredients,
    List<ExtraIngredient>? extraIngredients,
    String? id,
    int? quantity,
    int? totalPrice,
    String? categoryId,
  }) {
    var copy = FoodItem(
      title: title ?? this.title,
      arabicTitle: arabicTitle ?? this.arabicTitle,
      description: description ?? this.description,
      arabicDescription: arabicDescription ?? this.arabicDescription,
      price: price ?? this.price,
      deliveryTime: deliveryTime ?? this.deliveryTime,
      images: images ?? List.from(this.images),
      createdAt: createdAt ?? this.createdAt,
      mainIngredients: mainIngredients ??
          List.from(this.mainIngredients.map((i) => i.copyWith())),
      extraIngredients: extraIngredients ??
          List.from(this.extraIngredients.map((i) => i.copyWith())),
    );
    copy.id = id ?? this.id;
    copy.quantity = quantity ?? this.quantity;
    copy.totalPrice = totalPrice ?? this.totalPrice;
    copy.categoryId = categoryId ?? this.categoryId;
    return copy;
  }

  FoodItem({
    required this.title,
    required this.arabicTitle,
    required this.description,
    required this.arabicDescription,
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

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is FoodItem && other.id == id && hasSameIngredients(other);
  }

  @override
  int get hashCode => id.hashCode;

  bool hasSameIngredients(FoodItem other) {
    for (int i = 0; i < mainIngredients.length; i++) {
      if (mainIngredients[i] != other.mainIngredients[i]) return false;
    }
    for (int i = 0; i < extraIngredients.length; i++) {
      if (extraIngredients[i] != other.extraIngredients[i]) return false;
    }
    return true;
  }
}
