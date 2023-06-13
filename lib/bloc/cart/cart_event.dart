part of 'cart_bloc.dart';

abstract class CartEvent extends Equatable {
  const CartEvent();

  @override
  List<Object> get props => [];
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
