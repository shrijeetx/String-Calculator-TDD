import 'package:string_cal_tdd/string_calculator.dart';
import 'package:test/test.dart';

void main() {

  test('empty string should return 0',(){
    expect(StringCalculator.add(''),0);
  });

  test('single number should return the number', (){
    expect(StringCalculator.add('1'),1);
  });

  test('two numbers comma separated',(){
    expect(StringCalculator.add('1,5'), 6);
  });

  test('multiple numbers', (){
    expect(StringCalculator.add('1,2,3,4'), 10);
  });

  test('newlines should be allowed between numbers', () {
    expect(StringCalculator.add('1\n2,3'), 6);
  });

  test('custom delimiter', () {
    expect(StringCalculator.add('//;\n1;3'), 4);
  });

  test('negative numbers throw with message listing them', () {
    expect(() => StringCalculator.add('1,-2,3,-4'), throwsA(predicate((e) => e is Exception && e.toString().contains('negative numbers not allowed -2,-4'),),),);
  });
}
