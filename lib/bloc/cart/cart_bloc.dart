import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:test_task/models/cart_item.dart';
import 'package:test_task/models/cart_model.dart';

import '../../models/dish.dart';

part 'cart_event.dart';

part 'cart_state.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  CartBloc() : super(CartState(cartModel: CartModel.empty())) {
    on<CartItemCountIncreased>(_increaseCountCartItem);
    on<CartItemCountDecreased>(_decreaseCountCartItem);
  }

  Future<void> _increaseCountCartItem(
      CartItemCountIncreased event, Emitter<CartState> emit) async {
    final dish = event.dish;
    final cartItems = state.cartModel.cartItems;

    for (int index = 0; index < cartItems.length; index++) {
      final item = cartItems.elementAt(index);
      if (item.dish.id == dish.id) {
        cartItems[index] =
            state.cartModel.cartItems.elementAt(index).increase();

        final newCart = CartState(cartModel: CartModel(cartItems: cartItems));

        emit(newCart);
        return;
      }
    }

    final newCartItem = CartItem.create(dish: dish);

    emit(
      CartState(
        cartModel: CartModel(cartItems: cartItems..add(newCartItem)),
      ),
    );
  }

  Future<void> _decreaseCountCartItem(
      CartItemCountDecreased event, Emitter<CartState> emit) async {
    final dish = event.dish;
    final cartItems = state.cartModel.cartItems;

    for (int index = 0; index < cartItems.length; index++) {
      final item = cartItems.elementAt(index);
      if (item.dish.id == dish.id) {
        if (item.count > 1) {
          cartItems[index] =
              state.cartModel.cartItems.elementAt(index).decrease();
          emit(CartState(cartModel: CartModel(cartItems: cartItems)));
        } else {
          cartItems.removeAt(index);
          emit(CartState(cartModel: CartModel(cartItems: cartItems)));
        }
        return;
      }
    }
  }
}
