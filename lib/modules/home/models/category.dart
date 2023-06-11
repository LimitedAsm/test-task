import 'package:json_annotation/json_annotation.dart';

part 'category.g.dart';

typedef CategoryName = String;

@JsonSerializable(fieldRename: FieldRename.snake)
class Category {
  Category({
    required this.id,
    required this.name,
    required this.imageUrl,
  });

  factory Category.fromJson(Map<String, dynamic> json) =>
      _$CategoryFromJson(json);

  int id;
  CategoryName name;
  String imageUrl;
}
