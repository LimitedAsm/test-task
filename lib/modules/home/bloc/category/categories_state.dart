part of 'categories_bloc.dart';

abstract class CategoriesState extends Equatable {
  const CategoriesState({required this.categories});

  final List<Category> categories;

  @override
  List<Object> get props => [];
}

class CategoriesInitial extends CategoriesState {
  const CategoriesInitial({required super.categories});
}

class CategoriesSuccess extends CategoriesState {
  const CategoriesSuccess({required super.categories});
}

