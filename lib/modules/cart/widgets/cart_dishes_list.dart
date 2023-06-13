import 'package:flutter/material.dart';

import 'package:test_task/models/cart_item.dart';

import 'cart_item_card.dart';

class CartDishesList extends StatelessWidget {
  const CartDishesList({
    super.key,
    required this.cartDishList,
  });

  final List<CartItem> cartDishList;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.only(left: 8, top: 8, right: 8),
        child: ListView.builder(
          itemCount: cartDishList.length,
          itemBuilder: (BuildContext context, int index) {
            return CartItemCard(
              cartDish: cartDishList.elementAt(index),
            );
          },
        ),
      ),
    );
  }
}
