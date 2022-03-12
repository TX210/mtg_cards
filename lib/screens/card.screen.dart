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
            children: [
              ElevatedContainer(
                child: Row(
                  children: [
                    CardImage(card: widget.card),
                    CardStats(widget.card.getStats())
                  ],
                ),
              ),
              ElevatedContainer(child: CardText(widget.card.text)),
              ElevatedContainer(
                child: ExpansionTile(
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Icon(Icons.history_edu_outlined),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'Rullings',
                        ),
                      ),
                    ],
                  ),
                  children: [Timeline(widget.card.rulings!)],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
