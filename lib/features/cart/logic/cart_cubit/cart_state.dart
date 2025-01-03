part of 'cart_cubit.dart';

@freezed
class CartState with _$CartState {
  const factory CartState.initial() = _Initial;
  const factory CartState.notEmptyCart({required List<FoodItem> cartItems}) = CartNotEmpty;
  const factory CartState.emptyCart() = CartEmpty;
}
