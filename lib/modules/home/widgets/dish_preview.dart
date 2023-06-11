import 'package:flutter/material.dart';
import 'package:test_task/widgets/dish_preview_image.dart';

import '../models/dish.dart';
import 'dish_dialog.dart';

class DishPreview extends StatelessWidget {
  const DishPreview({
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
