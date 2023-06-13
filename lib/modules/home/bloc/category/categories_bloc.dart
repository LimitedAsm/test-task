import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../models/category.dart';
import '../../repository/categories.dart';

part 'categories_event.dart';

part 'categories_state.dart';

class CategoriesBloc extends Bloc<CategoriesEvent, CategoriesState> {
  CategoriesBloc(this._categoriesRepository)
      : super(const CategoriesInitial(categories: [])) {
    on<CategoriesInitialFetched>(_initialFetchCategories);
  }

  final CategoriesRepository _categoriesRepository;

  Future<void> _initialFetchCategories(
      CategoriesInitialFetched event, Emitter<CategoriesState> emit) async {
    await _categoriesRepository.retrieveCategoriesList().then((categories) {
      emit(CategoriesSuccess(categories: categories));
    });
  }
}
