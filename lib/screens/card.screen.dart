import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:mtg_cards/models/card/card_info.model.dart';
import 'package:mtg_cards/widgets/card_screen_widgets/card_image.dart';
import 'package:mtg_cards/widgets/card_screen_widgets/card_stats.dart';
import 'package:mtg_cards/widgets/card_screen_widgets/card_text.dart';
import 'package:mtg_cards/widgets/card_screen_widgets/timeline.dart';
import 'package:mtg_cards/widgets/functional/elevated_container.dart';

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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              ElevatedContainer(
                constrained: true,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Expanded(flex: 1, child: CardImage(card: widget.card)),
                    Expanded(flex: 1, child: CardStats(widget.card.getStats()))
                  ],
                ),
              ),
              ElevatedContainer(
                  child: CardText(widget.card.text ?? 'No text avaialble')),
              ElevatedContainer(
                child: ExpansionTile(
                  
                  leading: const Icon(Icons.history_edu_outlined),
                  title: const Align(
                  
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Rullings',
                      textAlign: TextAlign.start,
                    ),
                  ),
                  children: [Timeline(widget.card.rulings ?? [])],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
