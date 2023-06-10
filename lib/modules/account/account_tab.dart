import 'package:flutter/material.dart';

import 'package:test_task/models/app_tab.dart';
import 'package:test_task/utils/app_icon.dart';

AppTab buildAccountTab(BuildContext context) {
  return AppTab(
    screen: Placeholder(),
    bottomNavigationBarItem: BottomNavigationBarItem(
      activeIcon:
          AppIcons.account(color: Theme.of(context).colorScheme.primary),
      icon: AppIcons.account(),
      label: 'Аккаунт',
    ),
  );
}
