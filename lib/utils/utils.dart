dynamic getSplittedText(String text) {
  List<String> splitedText = text.replaceAll("\n", '+').split('+');
  if (splitedText.length > 1) {
    String mainText = splitedText.last;
    String metaText = splitedText.reversed.skip(1).join() + '\n';
    return [metaText, mainText];
  }
  return text;
}
