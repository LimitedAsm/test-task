import 'package:json_annotation/json_annotation.dart';
import 'package:test_task/utils/format_string.dart';

part 'category.g.dart';

typedef CategoryName = String;

@JsonSerializable(fieldRename: FieldRename.snake)
class Category {
  Category({
    required this.id,
    required this.rawName,
    required this.imageUrl,
  });

  factory Category.fromJson(Map<String, dynamic> json) =>
      _$CategoryFromJson(json);


  int id;
  @JsonKey(name: 'name')
  String rawName;
  String imageUrl;

  CategoryName get name {
    return formatString(rawName);
  }
}
