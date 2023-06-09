import 'package:dio/dio.dart';

import '../models/categories_list.dart';
import '../service/api_service.dart';

class CategoriesRepository {
  CategoriesRepository();

  final ApiService service = ApiService(
    Dio(
      BaseOptions(contentType: 'application/json'),
    ),
  );

  Future<CategoriesList> retrieveCategoriesList() {
    return service.retrieveCategoriesList();
  }
}
