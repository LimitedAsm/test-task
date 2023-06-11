import 'package:json_annotation/json_annotation.dart';

import 'dish.dart';

part 'dishes_list.g.dart';

@JsonSerializable()
class DishesList {
  DishesList({
    required this.dishes,
  });

  List<Dish> dishes;

  factory DishesList.fromJson(Map<String, dynamic> json) =>
      _$DishesListFromJson(json);
}
