import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:test_task/modules/home/models/categories_list.dart';
import 'package:test_task/modules/home/screens/category_screen.dart';

import '../service/api_service.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final apiService = ApiService(
      Dio(
        BaseOptions(contentType: 'application/json'),
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const Text('Главная'),
            ElevatedButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (BuildContext context) {
                  return const CategoryScreen();
                }),
              ),
              child: const Text('Go to category'),
            )
          ],
        ),
      ),
      body: Center(
        child: FutureBuilder(
          future: apiService.getCategoriesList(),
          builder:
              (BuildContext context, AsyncSnapshot<CategoriesList> snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              final name = snapshot.data?.categories[0].name;
              return Text(name!);
            } else {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
          },
        ),
      ),
    );
  }
}
