import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:foodie/features/home/data/models/food_category/food_category.dart';
import 'package:foodie/features/home/data/models/food_item/food_item.dart';

class FoodieFirebaseFood {
  Future<List<FoodItem>> foodItems({required String categoryId}) async {
    QuerySnapshot topicsSnapshot = await FirebaseFirestore.instance
        .collection('foodCategories')
        .doc(categoryId)
        .collection('foodItems')
        .get();
    List<FoodItem> foodItems = topicsSnapshot.docs.map((doc) {
      final foodItem = FoodItem.fromJson(doc.data() as Map<String, dynamic>);
      foodItem.id = doc.id;
      foodItem.totalPrice = int.parse(foodItem.price);
      return foodItem;
    }).toList();
    return foodItems;
  }

  Future<List<FoodCategory>> categories() async {
    QuerySnapshot topicsSnapshot =
        await FirebaseFirestore.instance.collection('foodCategories').get();
    List<FoodCategory> categories =
        await Future.wait(topicsSnapshot.docs.map((doc) async {
      final category =
          FoodCategory.fromJson(doc.data() as Map<String, dynamic>);
      category.id = doc.id;
      category.foodItems = await foodItems(categoryId: category.id);
      return category;
    }).toList());
    return categories;
  }
}
