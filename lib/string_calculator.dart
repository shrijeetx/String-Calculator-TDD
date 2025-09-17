class StringCalculator {

  static int add(String numbers) {

    if (numbers.isEmpty) return 0;

    String nums = numbers;
    String delimiter = ',';

    // delimiter identification if any
    if (nums.startsWith('//')) {
      final idx = nums.indexOf('\n');
      delimiter = nums.substring(2, idx);
      nums = nums.substring(idx + 1);
    }

    // replace newlines with delimiter
    nums = nums.replaceAll('\n', delimiter);

    final parts = nums.split(delimiter).where((s) => s.isNotEmpty);
    return parts.map(int.parse).reduce((a, b) => a + b);
  }

}