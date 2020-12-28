/// Type Test Operators in Dart

/*
Theory:

1) These operators are handy for checking types at runtime.
2) There are two types of type test operators at runtime: `is` and `is!`
3) is : it returns true if the object has the specified type
4) is! : it returns false if the object has the specified type
*/

main() {
  var res;

  // Example 1: is
  int n = 2;
  res = n is int;
  print("1. ${res}");

  // Example 2: is!
  double m = 2.21;
  res = m is! int;
  print("2. ${res}");
}

/*
OUTPUT

1. true
2. true
Exited

*/
