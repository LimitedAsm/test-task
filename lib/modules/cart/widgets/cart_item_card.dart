import 'package:flutter/material.dart';

import 'package:test_task/models/cart_item.dart';
import 'package:test_task/widgets/dish_parameters.dart';
import 'package:test_task/widgets/dish_preview_image.dart';

import 'cart_item_controller.dart';

class CartItemCard extends StatelessWidget {
  const CartItemCard({
    super.key,
    required this.cartDish,
  });

  final CartItem cartDish;

  @override
  Widget build(BuildContext context) {
    final dish = cartDish.dish;
    return Row(
      children: [
        Container(
          margin: const EdgeInsets.only(right: 8),
          child: DishPreviewImage(
            image: dish.image,
            size: const Size(62, 62),
            padding: const EdgeInsets.all(8),
          ),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(dish.name),
              DishParameters(price: dish.price, weight: dish.weight),
            ],
          ),
        ),
        CartItemController(cartItem: cartDish),
      ],
    );
  }
}
