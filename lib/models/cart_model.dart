import 'cart_item.dart';

class CartModel {
  const CartModel({required this.cartItems});

  CartModel.empty() : cartItems = [];

  final List<CartItem> cartItems;

  int get cartTotalPrice =>
      cartItems.fold(0, (value, item) => value + item.dish.price * item.count);
}
