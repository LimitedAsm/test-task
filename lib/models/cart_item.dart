import 'package:equatable/equatable.dart';
import 'package:test_task/models/dish.dart';

class CartItem extends Equatable {
  const CartItem({
    required this.dish,
    required this.count,
  });

  const CartItem.create({required this.dish}) : count = 1;

  final Dish dish;
  final int count;

  CartItem increase() {
    return _copyWith(count: count + 1);
  }

  CartItem decrease() {
    return _copyWith(count: count - 1);
  }

  CartItem _copyWith({
    Dish? dish,
    int? count,
  }) {
    return CartItem(
      dish: dish ?? this.dish,
      count: count ?? this.count,
    );
  }

  @override
  List<Object> get props => [dish, count];
}
