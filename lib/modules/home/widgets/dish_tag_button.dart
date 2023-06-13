import 'package:flutter/material.dart';

import '../models/dish_tag.dart';

class DishTagButton extends StatelessWidget {
  const DishTagButton({
    super.key,
    required this.tag,
    this.isSelected = false,
  });

  final DishTag tag;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final backgroundColor =
        isSelected ? colorScheme.primary : colorScheme.surfaceVariant;
    final textColor =
        isSelected ? colorScheme.onPrimary : colorScheme.onBackground;
    return Container(
      alignment: Alignment.topCenter,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        color: backgroundColor,
      ),
      child: Text(
        tag,
        style:
            Theme.of(context).textTheme.bodyMedium?.copyWith(color: textColor),
      ),
    );
  }
}
