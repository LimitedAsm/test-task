import 'package:flutter/material.dart';
import 'package:test_task/modules/home/models/categories_list.dart';
import 'package:test_task/widgets/location_app_bar.dart';

import '../repository/categories.dart';
import '../widgets/category_preview.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with AutomaticKeepAliveClientMixin<HomeScreen> {
  final CategoriesRepository categoriesRepository = CategoriesRepository();
  Future<CategoriesList> categories =
      CategoriesRepository().retrieveCategoriesList();

  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      appBar: const LocationAppBar(),
      body: Center(
        child: FutureBuilder(
          future: categoriesRepository.retrieveCategoriesList(),
          builder:
              (BuildContext context, AsyncSnapshot<CategoriesList> snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              final categories = snapshot.data!.categories;
              return Column(
                children: List.generate(
                  categories.length,
                  (index) => CategoryPreview(
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
