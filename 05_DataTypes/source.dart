/// Data Types in Dart

/*
THEORY:

1) Numbers
2) Strings
3) Booleans
4) Lists
5) Maps
*/

main() {
  // 1) Numbers: Numbers in Dart are used to represent numeric literals. The Number Dart come in two flavours `int` and `double`

  // int : int variable can store integer values
  int a = 2;
  print("1. I am of " + a.runtimeType.toString() + " type and my value is $a");

  // double : double variable can store fractional values also
  double b = 2.2;
  print("2. I am of ${b.runtimeType} type and my value is ${b}");

  // 2) String : String variable are initialised with the help of double or single quotes
  String $c = "Kumar ";
  String d = 'Anurag';
  print("3. I am of ${$c.runtimeType} type and my value is ${$c + d}");

  // 3) bool : bool variable can store true or false
  bool e = true;
  print("4. I am of ${e.runtimeType} type and my value is $e");

  // 4) List : it is an ordered group of objects
  var l = [1, 2, 3, "Anurag"]; // literal method
  print(
      "5. I am of ${l.runtimeType} type and my value is $l. My length is ${l.length}");

  // 5) Map : it represents a set of values as key-value pairs
  // literal method
  Map m1 = {"apple": "red", "banana": "yellow", "guava": "green"};
  // using new keyword
  Map m2 = new Map();
  m2[1] = 100;
  m2[2] = 2.2;
  m2["a"] = "anurag";
  print(
      "6. I am of ${m1.runtimeType} type and my value is $m1. My length is ${m1.length}");
  print(
      "7. I am of ${m2.runtimeType} type and my value is $m2. My length is ${m2.length}");
}

/*
OUTPUT:

1. I am of int type and my value is 2
2. I am of double type and my value is 2.2
3. I am of String type and my value is Kumar Anurag
4. I am of bool type and my value is true
5. I am of List<Object> type and my value is [1, 2, 3, Anurag]. My length is 4
6. I am of _InternalLinkedHashMap<dynamic, dynamic> type and my value is {apple: red, banana: yellow, guava: green}. My length is 3
7. I am of _InternalLinkedHashMap<dynamic, dynamic> type and my value is {1: 100, 2: 2.2, a: anurag}. My length is 3
Exited

*/
