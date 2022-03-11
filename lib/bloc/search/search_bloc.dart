import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:mtg_cards/models/card/card_info.model.dart';
import 'package:mtg_cards/services/cards.dart';

part 'search_event.dart';
part 'search_state.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  SearchBloc() : super(SearchInitial()) {
    on<SearchLoadEvent>((event, emit) async {
      emit(SearchLoadingState());
      List<CardInfo> loadedCards =
          await CardsService().findByName(event.searchQuery);
      emit(SearchLoaded(loadedCards: loadedCards));
    });
    on<SearchClearEvent>(((event, emit) => emit(SearchInitial())));
  }
}
