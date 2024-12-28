import 'package:foodie/core/firebase/foodie_firebase_food.dart';
import 'package:foodie/core/firebase/models/firebase_result/firebase_result.dart';
import 'package:foodie/features/home/data/models/food_category/food_category.dart';

import '../../../../core/firebase/models/firebase_exceptions/firebase_exceptions.dart';
import '../models/food_item/food_item.dart';

class FoodieFoodRepo {
  final FoodieFirebaseFood foodieFirebaseFood;

  FoodieFoodRepo(this.foodieFirebaseFood);

  Future<FirebaseResult<List<FoodCategory>>> getCategories() async {
    try {
      var response = await foodieFirebaseFood.categories();
      return FirebaseResult.success(response);
    } catch (error) {
      return FirebaseResult.failure(
          FirebaseExceptions.getFirebaseException(error));
    }
  }

  Future<FirebaseResult<List<FoodItem>>> getFoodItems(
      {required String categoryId, FoodItem? lastFoodItem}) async {
    try {
      var response = await foodieFirebaseFood.foodItems(
          categoryId: categoryId, lastFoodItem: lastFoodItem);
      return FirebaseResult.success(response);
    } catch (error) {
      return FirebaseResult.failure(
          FirebaseExceptions.getFirebaseException(error));
    }
  }
}
