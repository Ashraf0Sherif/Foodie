import 'package:foodie/core/firebase/foodie_firebase_food.dart';
import 'package:foodie/core/firebase/models/firebase_result/firebase_result.dart';
import 'package:foodie/features/home/data/models/food_category/food_category.dart';

import '../../../../core/firebase/models/firebase_exceptions/firebase_exceptions.dart';

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
}
