import 'package:flutter/widgets.dart';
import 'package:json_annotation/json_annotation.dart';

import '../modules/home/models/dish_tag.dart';
import '../utils/format_string.dart';

part 'dish.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class Dish {
  Dish({
    required this.id,
    required this.rawName,
    required this.price,
    required this.weight,
    required this.description,
    required this.imageUrl,
    required this.tags,
  });

  factory Dish.fromJson(Map<String, dynamic> json) => _$DishFromJson(json);

  int id;
  @JsonKey(name: 'name')
  String rawName;
  int price;
  int weight;
  String description;
  String imageUrl;
  @JsonKey(name: 'tegs')
  List<DishTag> tags;

  String get name {
    return formatString(rawName);
  }

  ImageProvider get image => NetworkImage(imageUrl);
}
