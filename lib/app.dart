import 'package:flutter/material.dart';

import 'navigation.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'SF Pro Display',
        textTheme: const TextTheme(
          titleLarge: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
          titleMedium: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
        ),
        scaffoldBackgroundColor: const Color.fromRGBO(255, 255, 255, 1),
        colorScheme: const ColorScheme.light(
          primary: Color.fromRGBO(51, 100, 224, 1),
          surfaceVariant: Color.fromRGBO(248, 247, 245, 1),
        ),
      ),
      home: const NavigationScreen(),
    );
  }
}
