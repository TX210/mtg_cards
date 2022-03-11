part of 'search_bloc.dart';

@immutable
abstract class SearchEvent {}

class SearchLoadEvent extends SearchEvent {
  final String searchQuery;

  SearchLoadEvent(this.searchQuery);
}

class SearchClearEvent extends SearchEvent {}
