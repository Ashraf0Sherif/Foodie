import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:foodie/features/home/data/models/food_category/food_category.dart';
import 'package:foodie/features/home/data/models/food_item/food_item.dart';

class FoodieFirebaseFood {
  static const fetchLimit = 3;

  Future<List<FoodItem>> foodItems(
      {required String categoryId, FoodItem? lastFoodItem}) async {
    Query firstPageSnapshot = FirebaseFirestore.instance
        .collection('foodCategories')
        .doc(categoryId)
        .collection('foodItems')
        .limit(fetchLimit);
    if (lastFoodItem != null) {
      DocumentSnapshot lastDocument = await FirebaseFirestore.instance
          .collection('foodCategories')
          .doc(categoryId)
          .collection('foodItems')
          .doc(lastFoodItem.id)
          .get();
      firstPageSnapshot = firstPageSnapshot.startAfterDocument(lastDocument);
    }
    QuerySnapshot querySnapshot = await firstPageSnapshot.get();
    List<FoodItem> foodItems = querySnapshot.docs.map(
      (doc) {
        final foodItem = FoodItem.fromJson(doc.data() as Map<String, dynamic>);
        foodItem.id = doc.id;
        foodItem.totalPrice = int.parse(foodItem.price);
        foodItem.categoryId = categoryId;
        return foodItem;
      },
    ).toList();
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
      return category;
    }).toList());
    return categories;
  }

  Future<List<FoodItem>> searchFoodItems({
    required String query,
    FoodItem? lastFoodItem,
  }) async {
    Query searchQuery = FirebaseFirestore.instance
        .collectionGroup('foodItems')
        .orderBy('createdAt', descending: true)
        .where('title', isGreaterThanOrEqualTo: query)
        .where('title', isLessThanOrEqualTo: '$query\uf8ff')
        .limit(fetchLimit);
    if (lastFoodItem != null) {
      searchQuery = searchQuery.startAfter([lastFoodItem.createdAt]);
    }
    QuerySnapshot querySnapshot = await searchQuery.get();
    List<FoodItem> foodItems = querySnapshot.docs.map((doc) {
      final foodItem = FoodItem.fromJson(doc.data() as Map<String, dynamic>);
      foodItem.id = doc.id;
      foodItem.totalPrice = int.parse(foodItem.price);
      foodItem.categoryId = doc.reference.parent.parent!.id;
      return foodItem;
    }).toList();
    return foodItems;
  }
}
