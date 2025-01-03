part of 'cart_cubit.dart';

@freezed
class CartState with _$CartState {
  const factory CartState.initial() = _Initial;
  const factory CartState.loading() = CartLoading;

  const factory CartState.notEmptyCart({required List<FoodItem> cartItems}) =
      CartNotEmpty;

  const factory CartState.removeItem({required List<FoodItem> cartItems}) =
      CartItemRemoved;

  const factory CartState.emptyCart() = CartEmpty;
}
