import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mtg_cards/models/card/card_info.model.dart';
import 'package:mtg_cards/screens/card.screen.dart';
import 'package:mtg_cards/screens/home.screen.dart';
import 'package:mtg_cards/utils/utils.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      theme: ThemeData(
          dividerColor: Colors.transparent,
          primarySwatch: MaterialColor(0xFFff9801, swatch)),
      routeInformationParser: _router.routeInformationParser,
      routerDelegate: _router.routerDelegate,
    );
  }

  final _router = GoRouter(routes: [
    GoRoute(path: '/', builder: (context, state) => const HomeScreen()),
    GoRoute(
        path: '/card/:id',
        builder: (context, state) {
          return CardScreen(card: state.extra! as CardInfo);
        })
  ]);
}
