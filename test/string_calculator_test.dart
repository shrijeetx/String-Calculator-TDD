import 'package:string_cal_tdd/string_calculator.dart';
import 'package:test/test.dart';

void main() {

  test('empty string should return 0', () {
    expect(StringCalculator.add(''), 0);
  });

}
