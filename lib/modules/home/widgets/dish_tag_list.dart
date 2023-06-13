import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/dishes/dishes_bloc.dart';
import '../models/dish_tag.dart';
import 'dish_tag_button.dart';

class DishTagList extends StatelessWidget {
  const DishTagList({
    super.key,
    required this.dishTagList,
    required this.selectedDishTagIndex,
  });

  final List<DishTag> dishTagList;
  final int selectedDishTagIndex;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8, bottom: 16, left: 16, right: 16),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: _buildSeparatedTagList(
              dishTagList, selectedDishTagIndex, context),
        ),
      ),
    );
  }

  List<Widget> _buildSeparatedTagList(
    List<DishTag> dishTagList,
    int selectedDishTagIndex,
    BuildContext context,
  ) {
    final separatedList = <Widget>[];
    for (int index = 0; index < dishTagList.length; index++) {
      separatedList.add(
        GestureDetector(
          onTap: () => context
              .read<DishesBloc>()
              .add(SelectedDishTagChanged(selectedDishTagIndex: index)),
          child: DishTagButton(
            tag: dishTagList.elementAt(index),
            isSelected: selectedDishTagIndex == index,
          ),
        ),
      );
      if (index != dishTagList.length - 1) {
        separatedList.add(
          const SizedBox(
            width: 8,
          ),
        );
      }
    }

    return separatedList;
  }
}
