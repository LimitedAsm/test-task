part of 'cart_bloc.dart';

class CartState extends Equatable {
  const CartState({required this.cartModel});

  final CartModel cartModel;

  @override
  List<Object> get props => [cartModel];
}
