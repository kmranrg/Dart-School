/// Relational Operators in Dart

main() {
  var num1 = 5;
  var num2 = 9;
  var res = num1 > num2;
  print('1. Is num1 greater than num2 : $res | Type: ${res.runtimeType}');

  res = num1 < num2;
  print('2. Is num1 lesser than  num2 : $res | Type: ${res.runtimeType}');

  res = num1 >= num2;
  print(
      '3. Is num1 greater than or equal to num2 : $res | Type: ${res.runtimeType}');

  res = num1 <= num2;
  print(
      '4. Is num1 lesser than or equal to num2  : $res | Type: ${res.runtimeType}');

  res = num1 != num2;
  print('5. Is num1 not equal to num2 : $res | Type: ${res.runtimeType}');

  res = num1 == num2;
  print('6. Is num1 equal to num2 : $res | Type: ${res.runtimeType}');
}

/*
OUTPUT

1. Is num1 greater than num2 : false | Type: bool
2. Is num1 lesser than  num2 : true | Type: bool
3. Is num1 greater than or equal to num2 : false | Type: bool
4. Is num1 lesser than or equal to num2  : true | Type: bool
5. Is num1 not equal to num2 : true | Type: bool
6. Is num1 equal to num2 : false | Type: bool
Exited

*/
