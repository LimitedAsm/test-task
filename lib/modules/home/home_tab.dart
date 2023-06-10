import 'package:flutter/material.dart';

import 'package:test_task/models/app_tab.dart';
import 'package:test_task/utils/app_icon.dart';

import 'screens/home_screen.dart';

AppTab buildHomeTab(BuildContext context) {
  return AppTab(
    screen: Navigator(
      onGenerateRoute: (settings) {
        Widget page = const HomeScreen();
        return MaterialPageRoute(builder: (_) => page);
      },
    ),
    bottomNavigationBarItem: BottomNavigationBarItem(
      activeIcon: AppIcons.home(color: Theme.of(context).colorScheme.primary),
      icon: AppIcons.home(),
      label: 'Главная',
    ),
  );
}
