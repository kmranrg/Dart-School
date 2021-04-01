import 'dart:io';

/// Objects in Dart

class Student {
  void test_method1() {
    print("This is test method 1");
  }

  void test_method2() {
    print("This is test method 2");
  }
}

main() {
  print("1. Object Creation :");
  Student s = new Student();
  s.test_method1();
  s.test_method2();

  print("\n2. Cascade Operator (..) :");
  /*
  KNOWLEDGE CLOUD:

  1) The cascade operator can be used as a shorthand in cases where there is a sequence of invocations.
  2) The cascade ( .. ) operator can be used to issue a sequence of calls via an object.
  */
  new Student()
    ..test_method1()
    ..test_method2();

  print("\n3. int to String Conversion :");
  int a = 12;
  var res = a.toString();
  print("$res | Data-Type: ${res.runtimeType}");

  print("\n4. Printing lines without line break in Dart :");
  stdout.write("Hello");
  stderr.write(" Anurag");
  // NOTE: Run the above two statements in Terminal not in Debug Console otherwise you won't get the output
}

/*
OUTPUT:

1. Object Creation :
This is test method 1
This is test method 2

2. Cascade Operator (..) :
This is test method 1
This is test method 2

3. int to String Conversion :
12 | Data-Type: String

4. Printing lines without line break in Dart :
Hello Anurag
*/
