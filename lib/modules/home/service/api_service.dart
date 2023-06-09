import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../models/categories_list.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: 'https://run.mocky.io/v3/')
abstract class ApiService {
  factory ApiService(Dio dio) = _ApiService;

  @GET('058729bd-1402-4578-88de-265481fd7d54')
  Future<CategoriesList> retrieveCategoriesList();

// @GET('aba7ecaa-0a70-453b-b62d-0e326c859b3b')
// Future<Dish> retrieveDishesList();
}
