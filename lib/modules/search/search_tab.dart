import 'package:flutter/material.dart';

import 'package:test_task/models/app_tab.dart';
import 'package:test_task/utils/app_icon.dart';

AppTab buildSearchTab(BuildContext context) {
  return AppTab(
    screen: const Placeholder(),
    bottomNavigationBarItem: BottomNavigationBarItem(
      activeIcon: AppIcons.search(color: Theme.of(context).colorScheme.primary),
      icon: AppIcons.search(),
      label: 'Поиск',
    ),
  );
}
