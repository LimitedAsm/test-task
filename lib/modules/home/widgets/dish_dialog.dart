import 'package:flutter/material.dart';
import 'package:test_task/utils/app_icon.dart';
import 'package:test_task/widgets/dialog_action.dart';
import 'package:test_task/widgets/dish_parametrs.dart';
import 'package:test_task/widgets/dish_preview_image.dart';

import '../models/dish.dart';

class DishDialog extends AlertDialog {
  const DishDialog({
    super.key,
    required this.dish,
  });

  final Dish dish;

  static Future<void> show({
    required BuildContext context,
    required Dish dish,
  }) {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return DishDialog(dish: dish);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(15),
        ),
      ),
      insetPadding: const EdgeInsets.all(16),
      titlePadding:
          const EdgeInsets.only(left: 16, right: 16, top: 16, bottom: 16),
      contentPadding: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
      title: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                DishPreviewImage(
                  image: dish.image,
                  size: const Size(200, 200),
                ),
                Text(dish.name),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: DishParameters(
                    price: dish.price,
                    weight: dish.weight,
                  ),
                ),
                Text(
                  dish.description,
                  style: DefaultTextStyle.of(context).style.copyWith(
                        color: DefaultTextStyle.of(context)
                            .style
                            .color
                            ?.withOpacity(0.65),
                      ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(4),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                DialogAction(
                  icon: AppIcons.favorite,
                  onPressed: () {},
                ),
                DialogAction(
                  icon: AppIcons.close,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          ),
        ],
      ),
      children: [
        SimpleDialogOption(
          padding: EdgeInsets.zero,
          onPressed: () {
            Navigator.pop(context);
          },
          child: Container(
              padding: const EdgeInsets.symmetric(vertical: 15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
                color: Theme.of(context).colorScheme.primary,
              ),
              width: double.infinity,
              child: Text(
                'Добавить в корзину',
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      color: Theme.of(context).colorScheme.onPrimary,
                    ),
                textAlign: TextAlign.center,
              )),
        ),
      ],
    );
  }
}
