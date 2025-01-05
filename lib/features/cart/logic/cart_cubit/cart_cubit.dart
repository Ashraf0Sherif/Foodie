import 'package:bloc/bloc.dart';
import 'package:foodie/features/home/data/models/food_item/food_item.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cart_cubit.freezed.dart';

part 'cart_state.dart';

class CartCubit extends Cubit<CartState> {
  CartCubit() : super(const CartState.emptyCart());
  List<FoodItem> cartItems = [];
  int price = 0;

  void addItemToCart(FoodItem item) {
    final newFoodItem = item.copyWith();
    if (newFoodItem.quantity == 0) newFoodItem.quantity = 1;
    cartItems.add(newFoodItem);
    updateCheckoutPrice();
  }

  void removeItemFromCart(FoodItem item) {
    cartItems.remove(item);
    updateCheckoutPrice();
  }

  void updateCheckoutPrice() {
    int currentPrice = 0;
    for (var item in cartItems) {
      currentPrice += (item.totalPrice * item.quantity);
    }
    if (price != currentPrice) {
      price = currentPrice;
      emit(const CartState.loading());
      if (cartItems.isNotEmpty) {
        emit(CartState.notEmptyCart(cartItems: cartItems));
      } else {
        emit(const CartState.emptyCart());
      }
    }
  }

  void clearCart() {
    cartItems.clear();
    updateCheckoutPrice();
    emit(const CartState.emptyCart());
  }

  bool isItemInCart(FoodItem item) => cartItems.contains(item);
}
