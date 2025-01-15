import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:foodie/features/home/data/models/food_item/food_item.dart';

import '../../features/login/data/models/user_model/address.dart';
import '../../features/login/data/models/user_model/foodie_user.dart';

class PaymobService {
  final Dio _dio = Dio();
  final String _url = dotenv.env["BASE_URL"]!;
  final String _authToken = dotenv.env["PAYMENT_KEY"]!;

  Future<String> getPaymentKey({
    required double amount,
    required List<FoodItem> foodItems,
    required FoodieUser user,
    required Address address,
  }) async {
    final payload = _buildPayload(amount, foodItems, user, address);
    final headers = _buildHeaders();

    final response = await _dio.post(
      _url,
      data: payload,
      options: Options(headers: headers),
    );

    return response.data['payment_keys'][0]['key'];
  }

  Map<String, dynamic> _buildPayload(double amount, List<FoodItem> foodItems,
      FoodieUser user, Address address) {
    return {
      "amount": amount * 100,
      "currency": "EGP",
      "payment_methods": [int.parse(dotenv.env["PAYMENT_METHOD"]!)],
      "items": _buildItems(foodItems),
      "billing_data": _buildBillingData(user, address),
    };
  }

  Map<String, String> _buildHeaders() {
    return {
      'Authorization': _authToken,
      'Content-Type': 'application/json',
    };
  }

  Map<String, String> _buildBillingData(FoodieUser user, Address address) {
    return {
      "email": user.email!,
      "first_name": user.username!.split(' ')[0],
      "last_name": user.username!.split(' ')[1],
      "phone_number": user.phoneNumber ?? "NA",
      "country": "NA",
      "city": "NA",
      "street": address.street,
      "building": address.building ?? "NA",
      "apartment": address.apartment ?? "NA",
      "floor": address.floor ?? "NA",
    };
  }

  List<Map<String, dynamic>> _buildItems(List<FoodItem> foodItems) {
    return foodItems.map((item) {
      return {
        "name": item.title,
        "amount": item.totalPrice * 100,
        "description": item.description,
        "quantity": item.quantity,
      };
    }).toList();
  }
}
