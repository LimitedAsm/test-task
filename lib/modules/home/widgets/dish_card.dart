import 'package:flutter/material.dart';

import 'package:test_task/models/dish.dart';
import 'package:test_task/widgets/dish_preview_image.dart';

import 'dish_dialog.dart';

class DishCard extends StatelessWidget {
  const DishCard({
    super.key,
    required this.dish,
  });

  final Dish dish;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => DishDialog.show(
        context: context,
        dish: dish,
      ),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 4),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AspectRatio(
              aspectRatio: 1,
              child: DishPreviewImage(image: dish.image),
            ),
            Text(dish.name)
          ],
        ),
      ),
    );
  }
}
