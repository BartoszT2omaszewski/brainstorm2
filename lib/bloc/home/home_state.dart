import 'package:brainstorm2/models/idea_model.dart';
import 'package:equatable/equatable.dart';

abstract class HomeState extends Equatable {
  const HomeState();

  @override
  List<Object?> get props => [];

  Iterable get ideas => [];

  // Iterable get ideas => null;
}

class HomeInitial extends HomeState {}

class HomeNavigation extends HomeState {
  final int page;

  const HomeNavigation(this.page);

  @override
  List<Object?> get props => [page];
}

class HomeData extends HomeState {
  @override
  final List<IdeaModel> ideas;

  const HomeData(this.ideas);

  @override
  List<Object?> get props => [ideas];
}
