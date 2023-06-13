import 'package:json_annotation/json_annotation.dart';

import 'package:test_task/models/dish.dart';

part 'dishes_list.g.dart';

@JsonSerializable()
class DishesList {
  DishesList({
    required this.dishes,
  });

  factory DishesList.fromJson(Map<String, dynamic> json) =>
      _$DishesListFromJson(json);

  List<Dish> dishes;
}
