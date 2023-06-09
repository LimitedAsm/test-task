import 'package:json_annotation/json_annotation.dart';

import 'category.dart';

part 'categories_list.g.dart';

@JsonSerializable()
class CategoriesList {
  CategoriesList({
    required this.categories,
  });

  @JsonKey(name: 'сategories')
  List<Category> categories;

  factory CategoriesList.fromJson(Map<String, dynamic> json) =>
      _$CategoriesListFromJson(json);
}
