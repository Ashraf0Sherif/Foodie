import 'package:foodie/core/firebase/foodie_firebase_food.dart';
import 'package:foodie/core/firebase/models/firebase_result/firebase_result.dart';
import 'package:foodie/core/paymob/paymob_service.dart';
import 'package:foodie/features/cart/data/models/receipt.dart';
import 'package:foodie/features/home/data/models/food_category/food_category.dart';

import '../../../../core/firebase/models/firebase_exceptions/firebase_exceptions.dart';
import '../models/food_item/food_item.dart';

class FoodieFoodRepo {
  final FoodieFirebaseFood foodieFirebaseFood;
  final PaymobService paymobService;

  FoodieFoodRepo(this.foodieFirebaseFood, this.paymobService);

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

  Future<FirebaseResult<List<FoodItem>>> searchFoodItems(
      {required String query, FoodItem? lastFoodItem}) async {
    try {
      var response = await foodieFirebaseFood.searchFoodItems(
          query: query, lastFoodItem: lastFoodItem);
      return FirebaseResult.success(response);
    } catch (error) {
      return FirebaseResult.failure(
          FirebaseExceptions.getFirebaseException(error));
    }
  }

  Future<FirebaseResult<List<Receipt>>> fetchReceipts() async {
    try {
      List<Receipt> receipts = await foodieFirebaseFood.fetchReceipts();
      List<Receipt> receiptsWithPaymentStatus =
          await paymobService.receiptsWithPaymentStatus(receipts);
      return FirebaseResult.success(receiptsWithPaymentStatus);
    } catch (error) {
      return FirebaseResult.failure(
          FirebaseExceptions.getFirebaseException(error));
    }
  }
}
