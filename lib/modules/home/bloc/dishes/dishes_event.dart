part of 'dishes_bloc.dart';

abstract class DishesEvent extends Equatable {
  const DishesEvent();

  @override
  List<Object> get props => [];
}

class DishesInitialFetched extends DishesEvent {
  const DishesInitialFetched();
}

class SelectedDishTagChanged extends DishesEvent {
  const SelectedDishTagChanged({required this.selectedDishTagIndex});

  final int selectedDishTagIndex;
}
