import 'package:test_task/models/dish.dart';

import 'dish_tag.dart';

class DishesModel {
  DishesModel({
    required this.dishes,
    required this.dishTags,
    required this.selectedDishTagIndex,
  });

  DishesModel.empty()
      : this(
          dishes: [],
          dishTags: [],
          selectedDishTagIndex: 0,
        );

  DishesModel.initial({required this.dishes})
      : dishTags = _calculateDishesTags(dishes) {
    selectedDishTagIndex = 0;
  }

  final List<Dish> dishes;
  final List<DishTag> dishTags;

  late final int selectedDishTagIndex;

  DishTag get selectedDishTag {
    return dishTags.elementAt(selectedDishTagIndex);
  }

  List<Dish> get dishesFiltered {
    final List<Dish> dishesFiltered = [];
    for (final Dish dish in dishes) {
      if (dish.tags.contains(selectedDishTag)) {
        dishesFiltered.add(dish);
      }
    }
    return dishesFiltered;
  }

  DishesModel copyWith({
    List<Dish>? dishes,
    List<DishTag>? dishTags,
    int? selectedDishTagIndex,
  }) {
    return DishesModel(
      dishes: dishes ?? this.dishes,
      dishTags: dishTags ?? this.dishTags,
      selectedDishTagIndex: selectedDishTagIndex ?? this.selectedDishTagIndex,
    );
  }

  static List<DishTag> _calculateDishesTags(List<Dish> dishes) {
    final List<DishTag> tags = [];
    for (final Dish dish in dishes) {
      final dishTags = dish.tags;
      for (final DishTag tag in dishTags) {
        if (!tags.contains(tag)) {
          tags.add(tag);
        }
      }
    }
    return tags;
  }
}
