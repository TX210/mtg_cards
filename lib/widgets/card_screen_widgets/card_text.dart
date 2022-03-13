import 'package:flutter/material.dart';
import 'package:mtg_cards/utils/utils.dart';
import 'package:mtg_cards/widgets/functional/image_text.dart';

class CardText extends StatelessWidget {
  final String text;
  const CardText(this.text, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(text,
            style: const TextStyle(
              height: 1.4,
              fontSize: 14,
              fontStyle: FontStyle.normal,
            )),
      ),
    );
  }
}

class Abilities extends StatelessWidget {
  final List<String> abilities;
  const Abilities(this.abilities, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> parsed = parseAbilities(abilities.join().trim()).split(
        ','); // guaranty that we receive List of ability names in needed format
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: parsed.map((ability) {
        return ImageText(
          imagePath: 'assets/icons/ability-$ability.png',
          text: ability.capitalize(),
          padding: 8,
          leading: false,
          fontSize: 18,
        );
      }).toList(),
    );
  }
}
