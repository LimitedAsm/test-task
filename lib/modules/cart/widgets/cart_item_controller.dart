import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_task/bloc/cart/cart_bloc.dart';
import 'package:test_task/models/cart_item.dart';
import 'package:test_task/utils/app_icon.dart';
import 'package:test_task/utils/constants.dart';

class CartItemController extends StatelessWidget {
  const CartItemController({
    super.key,
    required this.cartItem,
  });

  final CartItem cartItem;

  @override
  Widget build(BuildContext context) {
    const backgroundColor = Color.fromRGBO(239, 238, 236, 1);
    return Container(
      decoration: const BoxDecoration(
        borderRadius: Constants.mediumBorderRadius,
        color: backgroundColor,
      ),
      child: Row(
        children: [
          _buildAction(
            child: AppIcons.decrease,
            event: CartItemCountDecreased(dish: cartItem.dish),
            context: context,
          ),
          Container(
            width: 40,
            child: Text(
              cartItem.count.toString(),
              textAlign: TextAlign.center,
            ),
          ),
          _buildAction(
            child: AppIcons.increase,
            event: CartItemCountIncreased(dish: cartItem.dish),
            context: context,
          ),
        ],
      ),
    );
  }

  Widget _buildAction({
    required CartEvent event,
    required Widget child,
    required BuildContext context,
  }) {
    return GestureDetector(
      onTap: () => context.read<CartBloc>().add(event),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 4),
        child: child,
      ),
    );
  }
}
