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

}
