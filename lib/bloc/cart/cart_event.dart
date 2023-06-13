part of 'cart_bloc.dart';

abstract class CartEvent {
  const CartEvent();
}

class CartItemCountIncreased extends CartEvent {
  const CartItemCountIncreased({required this.dish});

  final Dish dish;
}

class CartItemCountDecreased extends CartEvent {
  const CartItemCountDecreased({
    required this.dish,
  });

  final Dish dish;
}
