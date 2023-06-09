import 'package:flutter/material.dart';

class AppTab {
  const AppTab({
    required this.screen,
    required this.bottomNavigationBarItem,
  });

  final Widget screen;
  final BottomNavigationBarItem bottomNavigationBarItem;
}
