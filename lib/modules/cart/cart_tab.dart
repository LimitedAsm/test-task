import 'package:flutter/material.dart';

import 'package:test_task/models/app_tab.dart';
import 'package:test_task/utils/app_icon.dart';

import 'screens/cart_screen.dart';

AppTab buildCardTab(BuildContext context) {
  return AppTab(
    screen: const CartScreen(),
    bottomNavigationBarItem: BottomNavigationBarItem(
      activeIcon: AppIcons.cart(color: Theme.of(context).colorScheme.primary),
      icon: AppIcons.cart(),
      label: 'Корзина',
    ),
  );
}
