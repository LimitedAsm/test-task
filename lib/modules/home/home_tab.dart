import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:test_task/models/app_tab.dart';
import 'package:test_task/modules/home/repository/dishes.dart';
import 'package:test_task/utils/app_icon.dart';

import 'bloc/dishes/dishes_bloc.dart';
import 'screens/home_screen.dart';

AppTab buildHomeTab(BuildContext context) {
  return AppTab(
    screen: BlocProvider(
      create: (_) => DishesBloc(
        DishesRepository(),
      ),
      child: Navigator(
        onGenerateRoute: (settings) {
          return MaterialPageRoute(builder: (_) => const HomeScreen());
        },
      ),
    ),
    bottomNavigationBarItem: BottomNavigationBarItem(
      activeIcon: AppIcons.home(color: Theme.of(context).colorScheme.primary),
      icon: AppIcons.home(),
      label: 'Главная',
    ),
  );
}
