import 'package:flutter/material.dart';
import 'package:test_task/models/app_tab.dart';

import 'screens/home_screen.dart';

AppTab buildHomeTab() {
  return AppTab(
    screen: Navigator(
      onGenerateRoute: (settings) {
        Widget page = const HomeScreen();
        return MaterialPageRoute(builder: (_) => page);
      },
    ),
    bottomNavigationBarItem: const BottomNavigationBarItem(
      icon: Icon(Icons.home),
      label: 'Главная',
    ),
  );
}
