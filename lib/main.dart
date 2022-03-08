import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mtg_cards/screens/home.screen.dart';

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
        primarySwatch: Colors.blue,
      ),
      routeInformationParser: _router.routeInformationParser,
      routerDelegate: _router.routerDelegate,
    );
  }

  final _router = GoRouter(routes: [
    GoRoute(path: '/', builder: (context, state) => const HomeScreen())
  ]);
}
