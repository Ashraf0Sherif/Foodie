import 'package:bloc/bloc.dart';
import 'package:foodie/features/home/data/models/food_item/food_item.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cart_cubit.freezed.dart';

part 'cart_state.dart';

class CartCubit extends Cubit<CartState> {
  CartCubit() : super(const CartState.emptyCart());
  List<FoodItem> cartItems = [];

  void addItemToCart(FoodItem item) {
    if (!cartItems.contains(item)) {
      final newFoodItem = item.copyWith(
        mainIngredients: item.mainIngredients.map((e) => e.copyWith()).toList(),
        extraIngredients:
            item.extraIngredients.map((e) => e.copyWith()).toList(),
      );
      cartItems.add(newFoodItem);
    }
    if (state is CartEmpty) emit(CartState.notEmptyCart(cartItems: cartItems));
  }

  void removeItemFromCart(FoodItem item) {
    print('Before remove - Cart items: ${cartItems.length}');
    cartItems.removeWhere((cartItem) => cartItem.id == item.id);
    print('After remove - Cart items: ${cartItems.length}');

    if (cartItems.isEmpty) {
      print('Emitting empty cart state');
      emit(const CartState.emptyCart());
    } else {
      print('Emitting non-empty cart state');
      emit(CartNotEmpty(cartItems: cartItems));
    }
  }

  bool isItemInCart(FoodItem item) => cartItems.contains(item);
}
