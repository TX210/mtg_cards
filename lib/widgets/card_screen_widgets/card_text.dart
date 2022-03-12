import 'package:flutter/material.dart';
import 'package:mtg_cards/utils/utils.dart';

class CardText extends StatelessWidget {
  final String text;
  const CardText(this.text, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var splittedText = getSplittedText(text);

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          splittedText[0],
          textAlign: TextAlign.center,
          style: const TextStyle(
              color: Colors.black, fontSize: 18, fontStyle: FontStyle.italic),
        ),
        Text(splittedText[1],
            style: const TextStyle(fontSize: 14, fontStyle: FontStyle.normal))
      ],
    );
  }
}
