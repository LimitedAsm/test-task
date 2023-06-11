import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/dishes/dishes_bloc.dart';
import 'dish_tag.dart';
import '../models/dish_tag.dart' as model;

class DishTagList extends StatelessWidget {
  const DishTagList({
    super.key,
    required this.dishTagList,
    required this.selectedDishTagIndex,
  });

  final List<model.DishTag> dishTagList;
  final int selectedDishTagIndex;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8, bottom: 12, left: 16, right: 16),
      child: SizedBox(
        height: 35,
        child: ListView.separated(
          separatorBuilder: (context, index) => const SizedBox(
            width: 8,
          ),
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () => context
                  .read<DishesBloc>()
                  .add(SelectedDishTagChanged(selectedDishTagIndex: index)),
              child: DishTag(
                tag: dishTagList.elementAt(index),
                isSelected: selectedDishTagIndex == index,
              ),
            );
          },
          itemCount: dishTagList.length,
        ),
      ),
    );
  }
}
