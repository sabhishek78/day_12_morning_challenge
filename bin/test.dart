import 'dart:math';
import 'main.dart';

import 'package:test/test.dart';

void main() {

  test('posive sum negative', (){
    expect(countPosSumNeg([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, -11, -12, -13, -14, -15]),[10,-65]);

  });
  test('digit Distance', (){

    expect(digitDistance(234, 489),12 );
  });
}