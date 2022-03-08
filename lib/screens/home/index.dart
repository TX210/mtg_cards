import 'package:flutter/material.dart';
import 'package:mtg_cards/api/client.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: FutureBuilder(
        future: ApiClient().getCard(),
        initialData: 'Loading card...',
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (ConnectionState.done == snapshot.connectionState) {
            return Text(snapshot.data.card.name ?? 'Failed to load');
          }
          return Text(snapshot.data ?? 'Failed to load');
        },
      ),
    );
  }
}
