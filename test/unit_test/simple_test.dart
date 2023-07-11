import 'package:flutter_test/flutter_test.dart';

int addTwoNumber(int x, int y){
  return x + y;
}

void main(){
  test("Test for add two number", (){
    final actual = addTwoNumber(10, 20);
    final expected = 40;
    expect(actual, expected);
  });

  test("Test for data type", () {
    final result = addTwoNumber(10, 20);
    final actual = result.runtimeType;
    final expected = String;
    expect(actual, expected);
  });

}