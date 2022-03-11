import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:mtg_cards/models/card/card_info.model.dart';
import 'package:mtg_cards/widgets/card_image.dart';

class CardScreen extends StatefulWidget {
  final CardInfo card;
  const CardScreen({
    Key? key,
    required this.card,
  }) : super(key: key);

  @override
  State<CardScreen> createState() => _CardScreenState();
}

class _CardScreenState extends State<CardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(widget.card.name),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () => context.go('/'),
          )),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Center(
              child: CardImage(card: widget.card),
            ),
          ],
        ),
      ),
    );
  }
}
