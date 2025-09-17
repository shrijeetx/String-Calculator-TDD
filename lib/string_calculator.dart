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

    final parts = nums.split(delimiter).where((s) => s.isNotEmpty).toList();

    final negatives = <int>[];
    var sum = 0;

    for (var p in parts) {
      final v = int.parse(p);
      if (v < 0) negatives.add(v);
      sum += v;
    }

    if (negatives.isNotEmpty) {
      throw Exception('negative numbers not allowed ${negatives.join(',')}');
    }

    return sum;
  }

}