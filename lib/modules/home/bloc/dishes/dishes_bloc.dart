import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:test_task/modules/home/models/dishes_model.dart';

import '../../repository/dishes.dart';

part 'dishes_event.dart';

part 'dishes_state.dart';

class DishesBloc extends Bloc<DishesEvent, DishesState> {
  DishesBloc(this._dishesRepository)
      : super(DishesInitial(dishesModel: DishesModel.empty())) {
    on<DishesInitialFetched>(_initialFetchDishes);
    on<SelectedDishTagChanged>(_changeSelectedDishTag);
  }

  final DishesRepository _dishesRepository;

  Future<void> _initialFetchDishes(DishesInitialFetched event,
      Emitter<DishesState> emit) async {
    await _dishesRepository.retrieveCategoriesList().then((dishes) {
      emit(DishesSuccess(
        dishesModel: DishesModel.initial(dishes: dishes),
      ));
    });
  }

  Future<void> _changeSelectedDishTag(SelectedDishTagChanged event,
      Emitter<DishesState> emit) async {
    emit(
      DishesSuccess(
        dishesModel: state.dishesModel
            .copyWith(selectedDishTagIndex: event.selectedDishTagIndex),
      ),
    );
  }
}
