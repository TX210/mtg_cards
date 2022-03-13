// ignore_for_file: unnecessary_string_escapes

import 'dart:ui';

dynamic getSplittedText(String text) {
  List<String> splitedText = text.replaceAll("\n", '+').split('+');
  if (splitedText.length > 1) {
    String mainText = splitedText.last;
    List metaText = splitedText.reversed.skip(1).toList();
    return {'metaText': metaText, 'mainText': mainText};
  }
  return text;
}

List<String> parseMana(String manaCost) =>
    manaCost.replaceAll('{', '').replaceAll('}', '').split('');

String parseAbilities(String ability) =>
    ability.replaceAll(' ', '').toLowerCase();

extension StringExtension on String {
  String capitalize() {
    return "${this[0].toUpperCase()}${substring(1).toLowerCase()}";
  }
}

Map<int, Color> swatch = {
  50: const Color.fromRGBO(255, 152, 1, .1),
  100: const Color.fromRGBO(255, 152, 1, .2),
  200: const Color.fromRGBO(255, 152, 1, .3),
  300: const Color.fromRGBO(255, 152, 1, .4),
  400: const Color.fromRGBO(255, 152, 1, .5),
  500: const Color.fromRGBO(255, 152, 1, .6),
  600: const Color.fromRGBO(255, 152, 1, .7),
  700: const Color.fromRGBO(255, 152, 1, .8),
  800: const Color.fromRGBO(255, 152, 1, .9),
  900: const Color.fromRGBO(255, 152, 1, 1),
};
