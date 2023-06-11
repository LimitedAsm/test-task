part of 'dishes_bloc.dart';

abstract class DishesState extends Equatable {
  const DishesState({required this.dishesModel});

  final DishesModel dishesModel;

  @override
  List<Object> get props => [dishesModel];
}

class DishesInitial extends DishesState {
  const DishesInitial({required super.dishesModel});
}

class DishesSuccess extends DishesState {
  const DishesSuccess({required super.dishesModel});
}

class DishesError extends DishesState {
  const DishesError({required super.dishesModel});
}
