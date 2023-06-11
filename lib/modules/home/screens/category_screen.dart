import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_task/modules/home/widgets/category_app_bar.dart';

import '../bloc/dishes/dishes_bloc.dart';
import '../models/category.dart';
import '../widgets/dish_tag_list.dart';
import '../widgets/dishes_list.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({
    super.key,
    required this.name,
  });

  final CategoryName name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CategoryAppBar(name: name),
      body: BlocBuilder<DishesBloc, DishesState>(
        builder: (context, state) {
          if (state is DishesInitial) {
            context.read<DishesBloc>().add(const DishesInitialFetched());
            return _buildLoading();
          } else if (state is DishesSuccess) {
            return Column(
              children: [
                DishTagList(
                  dishTagList: state.dishesModel.dishTags,
                  selectedDishTagIndex: state.dishesModel.selectedDishTagIndex,
                ),
                DishesList(dishes: state.dishesModel.dishesFiltered),
              ],
            );
          } else {
            return _buildError();
          }
        },
      ),
    );
  }

  Widget _buildLoading() {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }

  Widget _buildError() {
    return const Center(
      child: Text('Произошла ошибка, \n попробуйте позже'),
    );
  }
}
