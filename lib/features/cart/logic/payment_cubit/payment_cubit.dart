import 'package:bloc/bloc.dart';
import 'package:foodie/features/cart/data/repos/paymob_repo.dart';
import 'package:foodie/features/home/data/repos/foodie_food_repo.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../home/data/models/food_item/food_item.dart';
import '../../../login/data/models/user_model/address.dart';
import '../../../login/data/models/user_model/foodie_user.dart';

part 'payment_cubit.freezed.dart';

part 'payment_state.dart';

class PaymentCubit extends Cubit<PaymentState> {
  final PaymobRepo paymobRepo;
  final FoodieFoodRepo foodieFoodRepo;

  PaymentCubit(this.paymobRepo, this.foodieFoodRepo)
      : super(const PaymentState.initial());

  void emitPaymentStates(
      {required double amount,
      required List<FoodItem> foodItems,
      required FoodieUser user,
      required Address address}) async {
    emit(const PaymentState.loading());
    final response = await paymobRepo.getPaymobToken(
        amount: amount, foodItems: foodItems, user: user, address: address);
    response.when(
      success: (paymentKey) {
        emit(PaymentState.success(paymentKey: paymentKey));
      },
      failure: (error) {
        emit(PaymentState.failure(error: error.toString()));
      },
    );
  }
}
