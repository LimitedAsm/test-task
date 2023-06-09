import 'package:flutter/material.dart';
import 'package:test_task/models/app_tab.dart';

AppTab buildSearchTab() {
  return const AppTab(
    screen: Placeholder(),
    bottomNavigationBarItem: BottomNavigationBarItem(
      icon: Icon(Icons.search_rounded),
      label: 'Поиск',
    ),
  );
}
