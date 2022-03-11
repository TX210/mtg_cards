import 'package:flutter/material.dart';

import 'package:mtg_cards/models/card/card_info.model.dart';

class SearchListItem extends StatelessWidget {
  final CardInfo card;
  const SearchListItem({
    Key? key,
    required this.card,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        card.name as String,
        textAlign: TextAlign.center,
      ),
    );
  }
}
