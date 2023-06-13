import 'package:dio/dio.dart';

import '../models/category.dart';
import '../service/api_service.dart';

class CategoriesRepository {
  CategoriesRepository();

  final ApiService service = ApiService(
    Dio(
      BaseOptions(contentType: 'application/json'),
    ),
  );

  Future<List<Category>> retrieveCategoriesList() {
    return service
        .retrieveCategoriesList()
        .then((categories) => categories.categories);
  }
}
