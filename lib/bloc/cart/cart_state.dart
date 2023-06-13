part of 'cart_bloc.dart';

class CartState {
  CartState({required this.cartItems});

  final List<CartItem> cartItems;

  int get cartTotalPrice =>
      cartItems.fold(0, (value, item) => value + item.dish.price * item.count);
}
