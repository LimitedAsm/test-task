import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/cart/cart_bloc.dart';
import 'navigation.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => CartBloc(),
      child: MaterialApp(
        theme: ThemeData(
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
        ),
        home: const NavigationScreen(),
      ),
    );
  }
}
