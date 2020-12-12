/// Variables in Dart

main() {
  // Uninitialized Variable: All uninitialized variables have an initial value of null.
  dynamic x;
  print("1. I am of ${x.runtimeType} type and my value is $x");
  x = 2;
  print("2. I am of ${x.runtimeType} type and my value is $x");

  // const keyword: variable declared using const keyword must be initialised and it's value can not be changed.
  const pi = 3.14;
  const perimeter = 2 * pi * 12;
  print(
      "3. I am of ${perimeter.runtimeType} type and perimeter is $perimeter.");

  // final keyword : variable declared using final keyword must be initialised and it's value can not be changed.
  final a = 12;
  print("4. I am of ${a.runtimeType} type and my value is $a.");
}

/*
OUTPUT

1. I am of Null type and my value is null
2. I am of int type and my value is 2
3. I am of double type and perimeter is 75.36.
4. I am of int type and my value is 12.
Exited

*/
