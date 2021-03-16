/// Boolean in Dart

/*
Theory:

1) Dart provides an inbuilt support for the Boolean data type.
2) The Boolean data type in DART supports only two values – true and false.
3) SYNTAX: bool var_name = true; OR bool var_name = false;
*/

main() {
  var res;

  // Example 1
  bool test;
  test = 12 > 15; // it will return a boolean value
  res = test;
  print("1. $res | Data-Type: ${res.runtimeType}");

  // Example 2
  res = 'true';
  if (res == true) {
    print("2. Hello");
  } else if (res == false) {
    print("2. Namaste");
  } else if (res == "true") {
    print("2. Hola");
  } else {
    print("2. Hi");
  }
}

/*
OUTPUT

1. false | Data-Type: bool
2. Hola
Exited

*/
