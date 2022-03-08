import 'package:flutter/material.dart';
import 'package:mtg_cards/services/cards.dart';
import 'package:mtg_cards/widgets/small_card.dart';
import 'package:skeletons/skeletons.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        const SizedBox(
            width: 300,
            child: TextField(
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.black12,
                  border: OutlineInputBorder(
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(10)))),
            )),
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
                children: [1, 2, 3].map((e) => const SkeletonCard()).toList(),
              );
            },
          ),
        )
      ]),
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
