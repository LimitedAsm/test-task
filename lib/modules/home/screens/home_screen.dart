import 'package:flutter/material.dart';
import 'package:test_task/modules/home/models/categories_list.dart';
import 'package:test_task/widgets/location_app_bar.dart';

import '../models/category.dart';
import '../repository/categories.dart';
import '../widgets/category_preview.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final categoriesRepository = CategoriesRepository();


    return Scaffold(
      appBar: const LocationAppBar(),
      body: Center(
        child: FutureBuilder(
          future: categoriesRepository.retrieveCategoriesList(),
          builder:
              (BuildContext context, AsyncSnapshot<CategoriesList> snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              List<Category> categories = snapshot.data!.categories;
              return Column(
                children: List.generate(
                  categories.length,
                      (index) =>
                      CategoryPreview(
                        category: categories.elementAt(index),
                      ),
                ),
              );
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
