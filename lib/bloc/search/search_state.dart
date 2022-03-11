part of 'search_bloc.dart';

@immutable
abstract class SearchState {}

class SearchInitial extends SearchState {
  final List initialCards = [];
}

class SearchLoaded extends SearchState {
  final List<CardInfo> loadedCards;
  SearchLoaded({
    required this.loadedCards,
  });
}

class SearchLoadingState extends SearchState {}
