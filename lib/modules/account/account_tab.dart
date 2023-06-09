import 'package:flutter/material.dart';
import 'package:test_task/models/app_tab.dart';

AppTab buildAccountTab() {
  return const AppTab(
    screen: Placeholder(),
    bottomNavigationBarItem: BottomNavigationBarItem(
      icon: Icon(Icons.account_circle_outlined),
      label: 'Аккаунт',
    ),
  );
}
