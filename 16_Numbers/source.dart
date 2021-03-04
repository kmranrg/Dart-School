/// Numbers in Dart

main() {
  int a = 10;
  print("1. I am $a and my data type is ${a.runtimeType}.");

  double b = 10.20; // it will automatically ignore the last zero
  print("2. I am $b and my data type is ${b.runtimeType}.");

  // parse() : the parse() static function allows parsing a string containing literal into a number.
  var c = num.parse('2');
  print("3. I am $c and my data type is ${c.runtimeType}.");
  var d = num.parse('2.23');
  print("4. I am $d and my data type is ${d.runtimeType}.");

  /// Number Properties
  // 1) hashcode : returns an integer representing the hash code for a numerical value
  var e;
  e = 10.203;
  var res;
  res = e.hashCode;
  print("5. I am $res and my data type is ${res.runtimeType}.");
  e = 10;
  res = e.hashCode;
  print("6. I am $res and my data type is ${res.runtimeType}.");

  // 2) isFinite : returns a Boolean value true if the number is not a NaN or positive infinity or negative infinity
  e = 5000;
  res = e.isFinite;
  print("7. I am $res and my data type is ${res.runtimeType}.");
  e = double.infinity;
  res = e.isFinite;
  print("7. I am $res and my data type is ${res.runtimeType}.");

  // 3) isInfinite : returns a Boolean value true if the numbers is infinite
  e = double.infinity;
  res = e.isInfinite;
  print("8. I am $res and my data type is ${res.runtimeType}.");
  e = 12;
  res = e.isInfinite;
  print("9. I am $res and my data type is ${res.runtimeType}.");

  // 4) sign : returns minus one if the number is lesser than zero, plus one if the number is greater than zero and zero if the number is equal to zero
  e = 12;
  res = e.sign;
  print("10. I am $res and my data type is ${res.runtimeType}.");
  e = -112;
  res = e.sign;
  print("11. I am $res and my data type is ${res.runtimeType}.");
  e = 0;
  res = e.sign;
  print("12. I am $res and my data type is ${res.runtimeType}.");

  // 5) isEven : returns a Boolean value true if the number is even
  e = 0;
  res = e.isEven;
  print("13. I am $res and my data type is ${res.runtimeType}.");
  e = 10;
  res = e.isEven;
  print("14. I am $res and my data type is ${res.runtimeType}.");
  e = -120;
  res = e.isEven;
  print("15. I am $res and my data type is ${res.runtimeType}.");
  e = 5;
  res = e.isEven;
  print("16. I am $res and my data type is ${res.runtimeType}.");

  // isOdd : returns a Boolean value true if the number is an odd number
  e = 5;
  res = e.isOdd;
  print("17. I am $res and my data type is ${res.runtimeType}.");
  e = 50;
  res = e.isOdd;
  print("18. I am $res and my data type is ${res.runtimeType}.");

  /// Number Methods

  // 1) abs() : it is used to return an integer representing the absolute value of a number
  e = -50;
  res = e.abs();
  print("19. I am $res and my data type is ${res.runtimeType}.");

  // 2) ceil() : returns the ceiling value, that is the smallest integer greater than or equal to a number
  e = 50.01;
  res = e.ceil();
  print("20. I am $res and my data type is ${res.runtimeType}.");

  // 3) floor() : returns the largest integer less than or equal to a number
  e = 50.01;
  res = e.floor();
  print("21. I am $res and my data type is ${res.runtimeType}.");

  // 4) round() : returns the value of a number rounded to the nearest integer
  e = 45.49;
  res = e.round();
  print("22. I am $res and my data type is ${res.runtimeType}.");
  e = 45.50;
  res = e.round();
  print("23. I am $res and my data type is ${res.runtimeType}.");
  e = -45.51;
  res = e.round();
  print("24. I am $res and my data type is ${res.runtimeType}.");

  // 5) toDouble : returns the double representation of the number's value
  e = 2;
  res = e.toDouble();
  print("25. I am $res and my data type is ${res.runtimeType}.");

  // 6) toInt : returns the integer representation of the number's value
  e = 2.5;
  res = e.toInt();
  print("26. I am $res and my data type is ${res.runtimeType}.");

  // 7) toString : returns the string representation of the number's value
  e = 2.25;
  res = e.toString();
  print("27. I am $res and my data type is ${res.runtimeType}.");
  print("28. ${res is String}");
  print("29. ${res is! String}");

  // IMPORTANT
  e = -2.01; // it will return -3 because it takes immediate left value of number line
  res = e.floor();
  print("30. I am $res and my data type is ${res.runtimeType}.");

  // Solution to above problem :-
  // truncate() : returns an integer after discarding any fractional digits
  e = -2.01;
  res = e.truncate();
  print("31. I am $res and my data type is ${res.runtimeType}.");
  e = 2.81;
  res = e.truncate();
  print("32. I am $res and my data type is ${res.runtimeType}.");
}

/*
OUTPUT:

1. I am 10 and my data type is int.
2. I am 10.2 and my data type is double.
3. I am 2 and my data type is int.
4. I am 2.23 and my data type is double.
5. I am 10247379074042593 and my data type is int.
6. I am 10 and my data type is int.
7. I am true and my data type is bool.
7. I am false and my data type is bool.
8. I am true and my data type is bool.
9. I am false and my data type is bool.
10. I am 1 and my data type is int.
11. I am -1 and my data type is int.
12. I am 0 and my data type is int.
13. I am true and my data type is bool.
14. I am true and my data type is bool.
15. I am true and my data type is bool.
16. I am false and my data type is bool.
17. I am true and my data type is bool.
18. I am false and my data type is bool.
19. I am 50 and my data type is int.
20. I am 51 and my data type is int.
21. I am 50 and my data type is int.
22. I am 45 and my data type is int.
23. I am 46 and my data type is int.
24. I am -46 and my data type is int.
25. I am 2.0 and my data type is double.
26. I am 2 and my data type is int.
27. I am 2.25 and my data type is String.
28. true
29. false
30. I am -3 and my data type is int.
31. I am -2 and my data type is int.
32. I am 2 and my data type is int.
Exited

*/
