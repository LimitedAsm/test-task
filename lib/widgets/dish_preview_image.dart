import 'package:flutter/material.dart';

class DishPreviewImage extends StatelessWidget {
  const DishPreviewImage({
    super.key,
    required this.image,
    this.size,
  });

  final ImageProvider image;
  final Size? size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 4),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surfaceVariant,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      child: Align(
        child: Container(
          width: size?.width,
          height: size?.height,
          padding: const EdgeInsets.all(12),
          child: Image(image: image),
        ),
      ),
    );
  }
}
