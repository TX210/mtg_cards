import 'package:flutter/material.dart';
import 'package:mtg_cards/models/card/card_info.model.dart';
import 'package:mtg_cards/utils/utils.dart';
import 'package:mtg_cards/widgets/functional/image_text.dart';

class CardStats extends StatelessWidget {
  final Stats stats;
  const CardStats(this.stats, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        StatsText(stats.type),
        Rarity(stats.rarity),
        ManaCost(stats.manaCost),
        if (stats.power != null)
          ImageText(
              alignment: MainAxisAlignment.end,
              fontSize: 18,
              imagePath: 'assets/icons/power.png',
              text: stats.power as String),
        if (stats.toughnes != null)
          ImageText(
              alignment: MainAxisAlignment.end,
              fontSize: 18,
              imagePath: 'assets/icons/toughness.png',
              text: stats.toughnes as String),
        StatsText('Converted Mana Cost: ${stats.cmc.toString()}'),
        StatsText('Layout: ${stats.layout}'),
        StatsText('Card Number: ${stats.number as String}'),
      ],
    );
  }
}

class StatsText extends StatelessWidget {
  final String text;
  const StatsText(this.text, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      softWrap: true,
      textAlign: TextAlign.center,
      style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
    );
  }
}

class ManaCost extends StatelessWidget {
  final String manaCost;
  const ManaCost(this.manaCost, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> images = parseMana(manaCost)
        .map((mana) => Image.asset(
              'assets/icons/${mana.toLowerCase()}.png',
              fit: BoxFit.cover,
              width: 30,
              height: 30,
            ))
        .toList();
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: images,
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
