import 'package:foodie/core/networking/api_result.dart';
import 'package:foodie/core/networking/network_exceptions.dart';
import 'package:foodie/core/paymob/paymob_service.dart';

import '../../../home/data/models/food_item/food_item.dart';
import '../../../login/data/models/user_model/address.dart';
import '../../../login/data/models/user_model/foodie_user.dart';

class PaymobRepo {
  final PaymobService paymobService;

  PaymobRepo(this.paymobService);

  Future<ApiResult<String>> getPaymobToken(
      {required double amount,
      required List<FoodItem> foodItems,
      required FoodieUser user,
      required Address address}) async {
    try {
      var response = await paymobService.getPaymentKey(
          amount: amount, foodItems: foodItems, user: user, address: address);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(NetworkExceptions.getDioException(error));
    }
  }
}
