import 'package:json_annotation/json_annotation.dart';

part 'category.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class Category {
  Category({
    required this.id,
    required this.name,
    required this.imageUrl,
  });

  int id;
  String name;
  String imageUrl;

  factory Category.fromJson(Map<String, dynamic> json) =>
      _$CategoryFromJson(json);
}
