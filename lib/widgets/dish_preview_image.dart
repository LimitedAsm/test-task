import 'package:flutter/material.dart';

import '../utils/constants.dart';

class DishPreviewImage extends StatelessWidget {
  const DishPreviewImage({
    super.key,
    required this.image,
    this.size,
    this.isExpanded = false,
    this.padding = const EdgeInsets.all(12),
  });

  final ImageProvider image;
  final Size? size;
  final bool isExpanded;
  final EdgeInsets padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: isExpanded ? double.infinity : null,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surfaceVariant,
        borderRadius: Constants.mediumBorderRadius,
      ),
      child: Align(
        child: Container(
          width: size?.width,
          height: size?.height,
          padding: padding,
          child: Image(image: image),
        ),
      ),
    );
  }
}
