/// Libraries in Dart

import "dart:math";
import 'calculator.dart'; // importing our custom library
import 'logger.dart';
import 'weblogger.dart' as web;

/*
Theory: Some commonly used libraries are given below:-

1) dart:io - File, socket, HTTP, and other I/O support for server applications.
             This library does not work in browser-based applications.
             This library is imported by default.
2) dart:core - Built-in types, collections, and other core functionality
               for every Dart program. This library is automatically imported.
3) dart:math - Mathematical constants and functions, plus a random number generator.
4) dart:convert - Encoders and decoders for converting between different data
                  representations, including JSON and UTF-8.
5) dart:typed_data - Lists that efficiently handle fixed sized data
                     (for example, unsigned 8 byte integers).
*/

main() {
  print("1. The square root of 36 is ${sqrt(36)}");

  /*
  KNOWLEDGE CLOUD: Encapsulation in Libraries

  1) Dart scripts can prefix identifiers with an underscore ( _ ) to mark its components private.
  2) Simply put, Dart libraries can restrict access to its content by external scripts.
  3) This is termed as encapsulation.

  IMPLEMENTATION

  /// test.dart
  library loggerlib;                            
  void _log(msg) {
    print("Log method called in loggerlib msg:$msg");      
  }

  /// myMain.dart
  import 'test.dart' as web; 
  void main() { 
    web._log("hello from webloggerlib");
    /*
    The above line will throw an exception because we are trying to use
    _log function of `test.dart`. We can not use that function outside
    of that file as it starts with underscore(_), which makes it a 
    private function. So, any external script can not access it.
    */
  }
  */

  print("\n2. Creating Custom Libraries:");
  var num1 = 10;
  var num2 = 20;
  var sum = add(num1, num2);
  var mod = modulus(num1, num2);
  var r = random(10);
  print("sum = $sum");
  print("modulus = $mod");
  print("random = $r");

  print("\n3. Library Prefix");
  /*
  KNOWLEDGE CLOUD: Major Need of Library Prefix

  1) If you import two libraries with conflicting identifiers,
  2) Then we can specify a prefix for one or both libraries.
  3) Use the 'as' keyword for specifying the prefix.
  */
  log("Hello");
  web.log("Anurag");
}

/*
OUTPUT:

1. The square root of 36 is 6.0

2. Creating Custom Libraries:
Inside add method of calculator library...
Inside modulus method of calculator library...
Inside random method of calculator library...
sum = 30
modulus = 30
random = 5

3. Library Prefix
Log method called in loggerlib msg: Hello
Log method called in webloggerlib msg: Anurag
Exited

*/
