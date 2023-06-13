import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_task/modules/home/repository/categories.dart';
import 'package:test_task/widgets/location_app_bar.dart';

import '../bloc/category/categories_bloc.dart';
import '../widgets/category_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with AutomaticKeepAliveClientMixin<HomeScreen> {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return BlocProvider(
      create: (context) => CategoriesBloc(CategoriesRepository()),
      child: Scaffold(
        appBar: const LocationAppBar(),
        body: Center(
          child: BlocBuilder<CategoriesBloc, CategoriesState>(
            builder: (context, state) {
              if (state is CategoriesInitial) {
                context
                    .read<CategoriesBloc>()
                    .add(const CategoriesInitialFetched());
                return const Center(
                  child: CircularProgressIndicator(),
                );
              } else {
                return Column(
                  children: List.generate(
                    state.categories.length,
                        (index) =>
                        CategoryCard(
                          category: state.categories.elementAt(index),
                        ),
                  ),
                );
              }
            },
          ),
        ),
      ),
    );
  }
}
