import 'package:flutter/material.dart';
import 'package:mtg_cards/models/card/card_info.model.dart';

class CardStats extends StatelessWidget {
  final Stats stats;
  const CardStats(this.stats, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisSize: MainAxisSize.max,
        children: [
          Rarity(stats.rarity),
          Text(stats.manaCost),
          Text(stats.power as String),
          Text(stats.toughnes as String),
          Text(stats.cmc.toString()),
          Text(stats.colors.toString()),
          Text(stats.layout as String),
          Text(stats.number as String),
        ],
      ),
    );
  }
}

class Rarity extends StatelessWidget {
  final String rarity;
  const Rarity(this.rarity, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Map<String, Color> rarityColors = {
      'Common': Colors.black,
      'Uncommon': const Color.fromARGB(255, 192, 192, 192),
      'Rare': const Color.fromARGB(255, 255, 215, 0),
      'Mythic': const Color.fromARGB(255, 205, 127, 50),
      'Mythic Rare': const Color.fromARGB(255, 205, 127, 50),
      'Special': Colors.purple,
      'Basic Land': Colors.green.shade400
    };
    return Container(
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
          border: Border.all(color: rarityColors[rarity] ?? Colors.white),
          borderRadius: BorderRadius.circular(10)),
      child: Text(
        rarity,
        style: TextStyle(
            color: rarityColors[rarity],
            fontSize: 18,
            fontWeight: FontWeight.bold),
      ),
    );
  }
}
