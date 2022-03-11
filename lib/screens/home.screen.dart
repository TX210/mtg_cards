import 'package:flutter/material.dart';
import 'package:mtg_cards/bloc/search/search_bloc.dart';
import 'package:mtg_cards/services/cards.dart';
import 'package:mtg_cards/widgets/floating_search.dart';
import 'package:mtg_cards/widgets/small_card.dart';
import 'package:skeletons/skeletons.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SearchBloc(),
      child: Scaffold(
        appBar: AppBar(),
        body: Stack(children: [
          Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Padding(
              padding: const EdgeInsets.only(top: 50.0),
              child: FutureBuilder(
                future: CardsService().getCard(386616),
                builder: (BuildContext context, AsyncSnapshot snapshot) {
                  if (snapshot.connectionState == ConnectionState.done) {
                    return Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [1, 2, 3]
                            .map((e) => SmallCard(cardInfo: snapshot.data))
                            .toList());
                  }
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:
                        [1, 2, 3].map((e) => const SkeletonCard()).toList(),
                  );
                },
              ),
            )
          ]),
          const FloatingSearch()
        ]),
      ),
    );
  }
}

class SkeletonCard extends StatelessWidget {
  const SkeletonCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(5),
      child: SkeletonAvatar(
        style: SkeletonAvatarStyle(
            width: MediaQuery.of(context).size.width / 3 - 10, height: 250),
      ),
    );
  }
}
