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
  // 1) Numbers: NumbNumbers in Dart are used to represent numeric literals. The Number Dart come in two flavours `int` and `double`

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
  var l1 = [1, 2, 3, "Anurag"]; // literal method
  // now defining list using constructor method
  var l2 = new List(2); // here `2` will be the length of list
  List l3 = new List(3); // here `3` will be the length of list
  l3[0] = "Hello";
  l3[1] = 5.2;
  l3[2] = 5;
  print(
      "5. I am of ${l1.runtimeType} type and my value is $l1. My length is ${l1.length}");
  print(
      "6. I am of ${l2.runtimeType} type and my value is $l2. My length is ${l2.length}");
  print(
      "7. I am of ${l3.runtimeType} type and my value is $l3. My length is ${l3.length}");

  // 5) Map : it represents a set of values as key-value pairs
  Map m1 = {
    "apple": "red",
    "banana": "yellow",
    "guava": "green"
  }; // literal method
  Map m2 = new Map();
  m2[1] = 100;
  m2[2] = 2.2;
  m2["a"] = "anurag";
  print(
      "8. I am of ${m1.runtimeType} type and my value is $m1. My length is ${m1.length}");
  print(
      "9. I am of ${m2.runtimeType} type and my value is $m2. My length is ${m2.length}");
}

/*
OUTPUT:

1. I am of int type and my value is 2
2. I am of double type and my value is 2.2
3. I am of String type and my value is Kumar Anurag
4. I am of bool type and my value is true
5. I am of List<Object> type and my value is [1, 2, 3, Anurag]. My length is 4
6. I am of List<dynamic> type and my value is [null, null]. My length is 2
7. I am of List<dynamic> type and my value is [Hello, 5.2, 5]. My length is 3
8. I am of _InternalLinkedHashMap<dynamic, dynamic> type and my value is {apple: red, banana: yellow, guava: green}. My length is 3
9. I am of _InternalLinkedHashMap<dynamic, dynamic> type and my value is {1: 100, 2: 2.2, a: anurag}. My length is 3
Exited

*/
