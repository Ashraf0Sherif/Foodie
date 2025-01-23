import '../../../home/data/models/food_item/food_item.dart';


class Receipt {
  int? paymentId;
  String? orderId;
  int? amountCents;
  List<FoodItem>? foodItems;
  String? date;
  String? cardNumber;
  String? cardType;
  String? cardImage;
  @override
  String toString() {
    return 'Receipt{paymentId: $paymentId, orderId: $orderId, amountCents: $amountCents, foodItems: $foodItems}';
  }
}
