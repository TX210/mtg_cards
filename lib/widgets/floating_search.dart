import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:material_floating_search_bar/material_floating_search_bar.dart';
import 'package:mtg_cards/bloc/search/search_bloc.dart';
import 'package:mtg_cards/models/card/card_info.model.dart';
import 'package:mtg_cards/widgets/search_list_item.dart';

class FloatingSearch extends StatelessWidget {
  const FloatingSearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final SearchBloc searchBloc = context.read<SearchBloc>();

    return FloatingSearchBar(
      hint: 'Quick Search...',
      scrollPadding: const EdgeInsets.only(top: 16, bottom: 56),
      transitionDuration: const Duration(milliseconds: 500),
      transitionCurve: Curves.easeInOut,
      physics: const BouncingScrollPhysics(),
      openAxisAlignment: 0.0,
      width: 600,
      debounceDelay: const Duration(milliseconds: 500),
      onQueryChanged: (query) {
        if (query.isEmpty) {
          searchBloc.add(SearchClearEvent());
        } else {
          searchBloc.add(SearchLoadEvent(query));
        }
      },
      transition: SlideFadeFloatingSearchBarTransition(),
      leadingActions: [
        FloatingSearchBarAction.back(),
      ],
      actions: [
        FloatingSearchBarAction.searchToClear(
          showIfClosed: false,
        ),
      ],
      builder: (context, transition) {
        return ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: Material(
            color: Colors.white,
            elevation: 4.0,
            child: BlocBuilder<SearchBloc, SearchState>(
              builder: (context, state) {
                if (state is SearchLoaded) {
                  return Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      for (CardInfo card in state.loadedCards)
                        SearchListItem(card: card)
                    ],
                  );
                }
                if (state is SearchLoadingState) {
                  return const Padding(
                    padding: EdgeInsets.symmetric(vertical: 50),
                    child: Center(child: CircularProgressIndicator()),
                  );
                }
                if (state is SearchInitial) {
                  return const SizedBox();
                }
                return const SizedBox();
              },
            ),
          ),
        );
      },
    );
  }
}
