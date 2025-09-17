class StringCalculator {

  static int add(String numbers) {

    if (numbers.isEmpty) return 0;

    final splittedString = numbers.split(',');

    if (splittedString.length == 1) {
      return int.parse(splittedString.first);
    }

    return splittedString.map(int.parse).reduce((a, b) => a + b);
  }

}