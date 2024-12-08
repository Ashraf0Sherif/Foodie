
import 'ingredient_model.dart';

class FoodItem {
  final String id;
  final String title;
  final String description;
  final String price;
  final String deliverTime;
  final List<String> images;
  final List<Ingredient> ingredients;

  FoodItem({
    required this.id,
    required this.title,
    required this.description,
    required this.price,
    required this.deliverTime,
    required this.images,
    required this.ingredients,
  });
}
