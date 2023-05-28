import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:brainstorm2/models/idea_model.dart';

class IdeaCubit extends Cubit<List<IdeaModel>> {
  IdeaCubit() : super([]);

  void addIdea(IdeaModel idea) {
    final List<IdeaModel> currentIdeas = [...state];
    currentIdeas.add(idea);
    emit(currentIdeas);
  }
}
