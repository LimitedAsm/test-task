String formatString(String string) {
  String newString = string;
  final conjunctions = ['с', 'и'];
  for (final String conjunction in conjunctions) {
    final find = ' $conjunction ';
    final replaceWith = ' \u00ad$conjunction\u00A0';
    newString = newString.replaceAll(find, replaceWith);
  }
  return newString;
}
