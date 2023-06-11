import 'package:dio/dio.dart';

import '../models/dish.dart';
import '../service/api_service.dart';

class DishesRepository {
  DishesRepository();

  final ApiService service = ApiService(
    Dio(
      BaseOptions(contentType: 'application/json'),
    ),
  );

  Future<List<Dish>> retrieveCategoriesList() {
    return service.retrieveDishesList().then((value) => value.dishes);
  }
}
