import 'package:flutter/material.dart';

ThemeData buildAppTheme() {
  return ThemeData(
    appBarTheme: const AppBarTheme(
      titleTextStyle: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w500,
        color: Colors.black,
      ),
    ),
    fontFamily: 'SF Pro Display',
    textTheme: const TextTheme(
      titleLarge: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
    ),
    scaffoldBackgroundColor: const Color.fromRGBO(255, 255, 255, 1),
    colorScheme: const ColorScheme.light(
      primary: Color.fromRGBO(51, 100, 224, 1),
      surfaceVariant: Color.fromRGBO(248, 247, 245, 1),
    ),
  );
}
