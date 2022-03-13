// ignore_for_file: unnecessary_string_escapes

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
