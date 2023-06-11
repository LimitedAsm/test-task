import 'package:flutter/material.dart';

import '../models/dish.dart';
import 'product_dialog.dart';

class DishPreview extends StatelessWidget {
  const DishPreview({
    super.key,
    required this.dish,
  });

  final Dish dish;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => ProductDialog.show(context),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 4),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AspectRatio(
              aspectRatio: 1,
              child: Container(
                margin: const EdgeInsets.only(bottom: 4),
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.surfaceVariant,
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Image.network(
                    dish.imageUrl,
                    fit: BoxFit.scaleDown,
                  ),
                ),
              ),
            ),
            Text(dish.name)
          ],
        ),
      ),
    );
  }
}
