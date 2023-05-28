import 'package:brainstorm2/bloc/home/home_state.dart';
import 'package:brainstorm2/models/idea_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

enum BottomNavBarPage {
  home,
  adding,
  validation,
}

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());

  void navigateToPage(BottomNavBarPage page) {
    emit(HomeNavigation(page as int));
  }

  void addIdea(IdeaModel idea) {
    final updatedIdeas = List<IdeaModel>.from(state.ideas)..add(idea);
    emit(HomeData(updatedIdeas));
  }
}
