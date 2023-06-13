import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_task/bloc/cart/cart_bloc.dart';

import 'package:test_task/models/dish.dart';
import 'package:test_task/utils/app_icon.dart';
import 'package:test_task/widgets/app_button.dart';
import 'package:test_task/widgets/dialog_action.dart';
import 'package:test_task/widgets/dish_parameters.dart';
import 'package:test_task/widgets/dish_preview_image.dart';

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
    const maxImageSize = Size(200, 200);
    return SimpleDialog(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(15),
        ),
      ),
      insetPadding: const EdgeInsets.all(16),
      titlePadding: const EdgeInsets.all(16),
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
                  size: maxImageSize,
                  isExpanded: true,
                ),
                Text(dish.name),
                _buildDishParameters(),
                _buildDescription(context),
              ],
            ),
          ),
          _buildDialogActions(context),
        ],
      ),
      children: [
        SimpleDialogOption(
          padding: EdgeInsets.zero,
          onPressed: () {},
          child: AppButton(
            onPressed: () {
              context.read<CartBloc>().add(CartItemCountIncreased(dish: dish));
            },
            child: const Text('Добавить в корзину'),
          ),
        )
      ],
    );
  }

  Widget _buildDialogActions(BuildContext context) {
    return Padding(
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
    );
  }

  Widget _buildDescription(BuildContext context) {
    final defaultTextStyle = DefaultTextStyle.of(context).style;
    return Text(
      dish.description,
      style: defaultTextStyle.copyWith(
        color: defaultTextStyle.color?.withOpacity(0.65),
      ),
    );
  }

  Widget _buildDishParameters() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: DishParameters(
        price: dish.price,
        weight: dish.weight,
      ),
    );
  }
}
