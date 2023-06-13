import 'package:flutter/material.dart';

class DishParameters extends StatelessWidget {
  const DishParameters({
    super.key,
    required this.price,
    required this.weight,
  });

  final int price;
  final int weight;

  @override
  Widget build(BuildContext context) {
    final formattedPrice = _formatPriceString(price.toString());
    final formattedWeight = _formatWeightString(weight.toString());
    final defaultTextStyle = Theme.of(context).textTheme.bodyMedium;
    final customColor = defaultTextStyle?.color?.withOpacity(0.4);
    final customTextStyle = defaultTextStyle?.copyWith(color: customColor);

    return RichText(
      text: TextSpan(
        text: formattedPrice,
        style: defaultTextStyle,
        children: [
          TextSpan(
            text: ' · $formattedWeight',
            style: customTextStyle,
          ),
        ],
      ),
    );
  }

  String _formatPriceString(String price) {
    return '$price ₽';
  }

  String _formatWeightString(String weight) {
    return '$weightг';
  }
}
