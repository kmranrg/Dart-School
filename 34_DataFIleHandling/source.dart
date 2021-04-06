/// Data File Handling in Dart

import 'dart:io';

main() async {
  print("1. Writing to a file");
  final filename = 'myData.txt';
  String content = "Kumar Anurag\nInstagram ID: kmranrg";
  var file = await File(filename).writeAsString(content);
  var len = await file.length();
  /*
  NOTE:

  1) To avoid unintentional blocking of the program, several methods are
     asynchronous and return a Future.
  2) For example, the length method, which gets the length of a file, returns a Future.
  3) Wait for the future to get the result when it's ready.
  */
  print("The length of file is: $len");

  print("\n2. Reading file contents");
  File(filename).readAsString().then((String contents) => print(contents));
}

/*
OUTPUT:

1. Writing to a file
The length of file is: 34

2. Reading file contents
Kumar Anurag
Instagram ID: kmranrg
*/
