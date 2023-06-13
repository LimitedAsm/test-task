import 'package:flutter/material.dart';

import 'package:test_task/models/dish.dart';
import 'package:test_task/utils/text.dart';
import 'dish_card.dart';

class DishesList extends StatelessWidget {
  const DishesList({
    super.key,
    required this.dishes,
  });

  final List<Dish> dishes;

  static const gridCount = 3;

  static const horizontalListMargin = 12.0;
  static const horizontalItemMargin = 8;

  @override
  Widget build(BuildContext context) {
    const twoLineText = '1 \n 2';
    final Size textSize = calculateTextSize(
        text: twoLineText, context: context);
    final screenWidth = MediaQuery
        .of(context)
        .size
        .width;
    final gridHeight = (screenWidth - horizontalListMargin * 2) / gridCount +
        textSize.height -
        horizontalItemMargin;

    return Expanded(
      child: GridView.builder(
        itemCount: dishes.length,
        padding: const EdgeInsets.symmetric(horizontal: horizontalListMargin),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisExtent: gridHeight,
        ),
        itemBuilder: (BuildContext context, int index) {
          return DishCard(
            dish: dishes.elementAt(index),
          );
        },
      ),
    );
  }
}
