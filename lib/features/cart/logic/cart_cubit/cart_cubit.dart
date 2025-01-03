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
    if (state is CartEmpty) emit(CartState.notEmptyCart(cartItems: cartItems));
  }

  void removeItemFromCart(FoodItem item) {
    emit(const CartState.loading());
    cartItems.remove(item);
    if (cartItems.isEmpty) {
      emit(const CartState.emptyCart());
    } else {
      emit(CartState.removeItem(cartItems: cartItems));
    }
  }

  int getCartCheckoutPrice() {
    int currentPrice = 0;
    for (var item in cartItems) {
      currentPrice += (item.totalPrice * item.quantity);
    }
    if (currentPrice != price) {
      price = currentPrice;
      if (state is CartNotEmpty) {
        emit(const CartState.loading());
        emit(CartState.notEmptyCart(cartItems: cartItems));
      } else if (state is CartItemRemoved) {
        emit(CartState.notEmptyCart(cartItems: cartItems));
      }
    }
    return price;
  }

  void clearCart() {
    cartItems.clear();
    emit(const CartState.emptyCart());
  }

  bool isItemInCart(FoodItem item) => cartItems.contains(item);
}
