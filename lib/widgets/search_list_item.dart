import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:mtg_cards/models/card/card_info.model.dart';

class SearchListItem extends StatelessWidget {
  final CardInfo card;
  const SearchListItem({
    Key? key,
    required this.card,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> images = card.types != null
        ? card.types!
            .map(
                (type) => Image.asset('assets/icons/${type.toLowerCase()}.png'))
            .toList()
        : [
            const SizedBox(
              width: 25,
            )
          ];
    return InkWell(
      onTap: () {
        context.go('/card/${card.id}', extra: card);
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  children: images,
                ),
                Expanded(
                  child: Text(
                    card.name,
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
            Divider(
              indent: 30,
              thickness: 1,
              color: Colors.grey.shade400,
            )
          ],
        ),
      ),
    );
  }
}
