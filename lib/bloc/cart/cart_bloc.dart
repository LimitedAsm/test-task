import 'dart:async';

import 'package:bloc/bloc.dart';

import 'package:test_task/models/cart_item.dart';
import 'package:test_task/models/dish.dart';

part 'cart_event.dart';

part 'cart_state.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  CartBloc() : super(CartState(cartItems: [])) {
    on<CartItemCountIncreased>(_increaseCountCartItem);
    on<CartItemCountDecreased>(_decreaseCountCartItem);
  }

  Future<void> _increaseCountCartItem(
      CartItemCountIncreased event, Emitter<CartState> emit) async {
    final dish = event.dish;
    final cartItems = state.cartItems;

    for (int index = 0; index < cartItems.length; index++) {
      final item = cartItems.elementAt(index);
      if (item.dish.id == dish.id) {
        cartItems[index] = cartItems.elementAt(index).increase();
        final newCart = CartState(cartItems: cartItems);
        emit(newCart);
        return;
      }
    }

    final newCartItem = CartItem.create(dish: dish);
    emit(CartState(cartItems: cartItems..add(newCartItem)));
  }

  Future<void> _decreaseCountCartItem(
      CartItemCountDecreased event, Emitter<CartState> emit) async {
    final dish = event.dish;
    final cartItems = state.cartItems;

    for (int index = 0; index < cartItems.length; index++) {
      final item = cartItems.elementAt(index);
      if (item.dish.id == dish.id) {
        if (cartItems.elementAt(index).count > 1) {
          cartItems[index] = cartItems.elementAt(index).decrease();
          emit(CartState(cartItems: cartItems));
        } else {
          cartItems.removeAt(index);
          emit(CartState(cartItems: cartItems));
        }
        return;
      }
    }
  }
}
