import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_task/bloc/cart/cart_bloc.dart';
import 'package:test_task/widgets/app_button.dart';
import 'package:test_task/widgets/location_app_bar.dart';

import '../widgets/cart_dishes_list.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartBloc, CartState>(
      builder: (context, state) {
        return Scaffold(
          appBar: const LocationAppBar(),
          body: Column(
            children: [
              CartDishesList(cartDishList: state.cartItems),
              _buildBuyButton(state.cartTotalPrice),
            ],
          ),
        );
      },
    );
  }

  Widget _buildBuyButton(int price) {
    return Container(
      margin: const EdgeInsets.all(16),
      width: double.infinity,
      child: AppButton(
        child: Text('Оплатить $price ₽'),
        onPressed: () {},
      ),
    );
  }
}
