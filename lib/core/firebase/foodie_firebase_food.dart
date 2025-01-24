import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:foodie/features/cart/data/models/receipt.dart';
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

  Future<List<Receipt>> fetchReceipts() async {
    QuerySnapshot receiptsSnapshot =
        await FirebaseFirestore.instance.collection('receipts').get();

    List<Future<Receipt>> receiptFutures = receiptsSnapshot.docs.map(
      (doc) async {
        final receipt = Receipt();
        receipt.orderId = doc.id;
        receipt.foodItems = await fetchFoodItemsForReceipt(receipt.orderId!);
        return receipt;
      },
    ).toList();

    return await Future.wait(receiptFutures);
  }

  Future<List<FoodItem>> fetchFoodItemsForReceipt(String receiptId) async {
    DocumentSnapshot receiptSnapshot = await FirebaseFirestore.instance
        .collection('receipts')
        .doc(receiptId)
        .get();
    List<dynamic> foodItemsData =
        (receiptSnapshot.data() as Map<String, dynamic>)['foodItems'] ?? [];
    Map<String, int> foodItemQuantities = {
      for (var item in foodItemsData)
        (item['id'] as String): item['quantity'] as int,
    };
    List<String> foodItemIds = foodItemQuantities.keys.toList();
    List<FoodItem> fetchedFoodItems = [];
    QuerySnapshot foodItemsSnapshot = await FirebaseFirestore.instance
        .collectionGroup('foodItems')
        .where('id', whereIn: foodItemIds)
        .orderBy('createdAt', descending: true)
        .get();
    fetchedFoodItems.addAll(
      foodItemsSnapshot.docs.map(
        (doc) {
          final foodItem =
              FoodItem.fromJson(doc.data() as Map<String, dynamic>);
          foodItem.id = doc.id;
          foodItem.categoryId = doc.reference.parent.parent!.id;
          foodItem.quantity = foodItemQuantities[foodItem.id] ?? 0;
          foodItem.totalPrice = int.parse(foodItem.price) * foodItem.quantity;
          return foodItem;
        },
      ),
    );
    return fetchedFoodItems;
  }
}
