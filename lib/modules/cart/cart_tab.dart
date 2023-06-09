import 'package:flutter/material.dart';
import 'package:test_task/models/app_tab.dart';
import 'package:test_task/modules/cart/screens/cart_screen.dart';

AppTab buildCardTab() {
  return const AppTab(
    screen: CardScreen(),
    bottomNavigationBarItem: BottomNavigationBarItem(
      icon: Icon(Icons.shopping_cart),
      label: 'Корзина',
    ),
  );
}
