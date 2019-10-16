// Challenge 1
//Create a function that takes an list of positive and negative numbers.
// Return a list where the first element is the count of positive numbers and the second element is the sum of negative numbers.
// Examples
// countPosSumNeg([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, -11, -12, -13, -14, -15]) ➞ [10, -65]
/// There are a total of 10 positive numbers.
/// The sum of all negative numbers equals -65.
countPosSumNeg(List <int> list){
  int numPositive=0;
  int sumNegative=0;
  List<int> result= [];

  if(list.isEmpty)
  {
  result.add(0);
  result.add(0);
  return result;
  }

  for(int i=0;i<list.length;i++) {
    if (list[i] >= 0)
      {
        numPositive++;
      }
    else {
      sumNegative=sumNegative+list[i];
    }

  }
  result.add(numPositive);
  result.add(sumNegative);
  return result;
}


// Challenge 2
// The digit distance between two numbers is the absolute value of the difference of each digit.
//  To illustrate:
//
// digitDistance(234, 489) ➞ 12
// Since |2 - 4| + |3 - 8| + |4 - 9| = 2 + 5 + 5
/// Create a function that returns the digit distance between two integers.
int digitDistance(int num1, int num2) {
  int h1=(num1 ~/ 100);
  int h2=(num2 ~/100);
  //print(h1);
  //print(h2);
  int t1=(num1-h1*100)~/10;
  //print(t1);
  int t2=(num2-h2*100)~/10;
 // print(t2);
  int u1=num1-h1*100-t1*10;
 // print(u1);
  int u2=num2-h2*100-t2*10;
 // print(u2);
  return((h1-h2).abs()+(t1-t2).abs()+(u1-u2).abs());

}


// Challenge 3
// Write test cases to test previous functions
main() {
  print(countPosSumNeg([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, -11, -12, -13, -14, -15]));
  print(countPosSumNeg([]));
  print(countPosSumNeg([1, 2, 3, 4, 5, 6, 7, 8, 9, 10]));
  print(countPosSumNeg([ -11, -12, -13, -14, -15]));
  print(digitDistance(234, 489));
 // print(digitDistance(34, 489));
}
