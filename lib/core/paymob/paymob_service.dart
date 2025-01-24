import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:foodie/core/helpers/assets.dart';
import 'package:foodie/core/helpers/shared_pref_keys.dart';
import 'package:foodie/features/cart/data/models/receipt.dart';
import 'package:foodie/features/home/data/models/food_item/food_item.dart';

import '../../features/login/data/models/user_model/address.dart';
import '../../features/login/data/models/user_model/foodie_user.dart';

class PaymobService {
  final Dio _dio = Dio();
  final String _url = dotenv.env["BASE_URL"]!;
  final String _paymentKey = dotenv.env["PAYMENT_KEY"]!;
  final String _authTokenURL = dotenv.env["AUTH_TOKEN_URL"]!;
  final String _transactionInquiryURL = dotenv.env["TRANSACTION_INQUIRY_URL"]!;
  final String _apiKey = dotenv.env["API_KEY"]!;

  Future<String> getPaymentKey({
    required double amount,
    required List<FoodItem> foodItems,
    required FoodieUser user,
    required Address address,
  }) async {
    final payload = _buildPayload(amount, foodItems, user, address);
    final headers = _buildHeaders(tokenKey: _paymentKey);

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

  Map<String, String> _buildHeaders({required String tokenKey}) {
    return {
      'Authorization': tokenKey,
      'Content-Type': 'application/json',
    };
  }

  Map<String, String> _buildBillingData(FoodieUser user, Address address) {
    return {
      "email": user.email!,
      "first_name": user.username!.split(' ')[0],
      "last_name": user.username!.split(' ')[1],
      "phone_number": "NA",
      "country": "EG",
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
        "name": currentLanguage == 'ar' ? item.arabicTitle : item.title,
        "amount": item.totalPrice * 100,
        "description":
            currentLanguage == 'ar' ? item.arabicDescription : item.description,
        "quantity": item.quantity,
      };
    }).toList();
  }

  Future<String> getAuthToken() async {
    final response = await _dio.post(
      _authTokenURL,
      data: {"api_key": _apiKey},
    );
    return response.data['token'];
  }

  Future<List<Receipt>> receiptsWithPaymentStatus(
      List<Receipt> receipts) async {
    final authToken = await getAuthToken();
    for (var receipt in receipts) {
      final response = await _dio.post(
        _transactionInquiryURL,
        data: {
          "order_id": receipt.orderId,
        },
        options: Options(
          headers: {
            "Authorization": "Bearer $authToken",
            "Cache-Control": "no-cache",
            "Postman-Token": "<calculated when request is sent>",
            "Content-Type": "application/json",
            "User-Agent": "PostmanRuntime/7.43.0",
            "Accept": "*/*",
            "Accept-Encoding": "gzip, deflate, br",
            "Connection": "keep-alive",
          },
        ),
      );
      receipt.amountCents = response.data['amount_cents'];
      receipt.amountCents = (receipt.amountCents! / 100).ceil();
      receipt.paymentId = response.data['id'];
      receipt.date = response.data['created_at']!.split("T")[0];
      receipt.cardType = response.data['data']['card_type'];
      receipt.cardNumber = response.data['data']['card_num'];
      Map<String, String> cardImageMap = {
        'MASTERCARD': AssetsData.kMasterCardSVG,
        'VISA': AssetsData.kVisaSVG,
      };
      receipt.cardImage = cardImageMap[receipt.cardType];
    }
    receipts
        .sort((receipt1, receipt2) => receipt2.date!.compareTo(receipt1.date!));
    return receipts;
  }
}
