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
        colorScheme: const ColorScheme.light(
          background: Color(0x00d8d8d8),
          primary: Color.fromRGBO(51, 100, 224, 1),
        ),
        // brightness: Brightness.light,
      ),
      home: const NavigationScreen(),
    );
  }
}
