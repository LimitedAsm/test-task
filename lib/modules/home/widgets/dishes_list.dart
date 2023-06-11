import 'package:flutter/material.dart';

import '../models/dish.dart';
import 'dish_preview.dart';

class DishesList extends StatelessWidget {
  const DishesList({
    super.key,
    required this.dishes,
  });

  final List<Dish> dishes;

  @override
  Widget build(BuildContext context) {
    const gridCount = 3;
    final gridHeight = MediaQuery.of(context).size.width / gridCount + 34;

    return Expanded(
      child: GridView.builder(
        itemCount: dishes.length,
        padding: const EdgeInsets.symmetric(horizontal: 12),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisExtent: gridHeight,
        ),
        itemBuilder: (BuildContext context, int index) {
          return DishPreview(
            dish: dishes.elementAt(index),
          );
        },
      ),
    );
  }
}
