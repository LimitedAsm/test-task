import 'package:flutter/material.dart';
import 'package:test_task/modules/search/search_tab.dart';

import 'models/app_tab.dart';
import 'modules/account/account_tab.dart';
import 'modules/cart/cart_tab.dart';
import 'modules/home/home_tab.dart';

class NavigationScreen extends StatefulWidget {
  const NavigationScreen({Key? key}) : super(key: key);

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  int _selectedIndex = 0;

  final PageController _pageController = PageController();

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      _pageController.jumpToPage(_selectedIndex);
    });
  }

  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    final List<AppTab> tabs = [
      buildHomeTab(context),
      buildSearchTab(context),
      buildCardTab(context),
      buildAccountTab(context),
    ];

    return SafeArea(
      child: Scaffold(
        body: PageView(
          controller: _pageController,
          physics: const NeverScrollableScrollPhysics(),
          children: tabs.map((tab) => tab.screen).toList(),
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: tabs.map((tab) => tab.bottomNavigationBarItem).toList(),
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
