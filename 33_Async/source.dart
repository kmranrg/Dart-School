/// async in Dart

import 'dart:io';
import 'dart:async';

/*
Theory: Asynchronous Programming

1) An asynchronous operation executes in a thread, separate from the main application thread.
2) When an application calls a method to perform an operation asynchronously, the application
   can continue executing while the asynchronous method performs its task.
*/

main() {
  print("1. Problem with Synchronous Programming:");
  stdout.write("Enter your name: ");
  var name = stdin.readLineSync(); // taking input from user
  print("Hello, ${name} | Data-Type of input: ${name.runtimeType}");
  /*
  NOTE:

  1) In the above synchronous code, we can see that program waits until
     user enters a value.
  2) In computing, we say something is synchronous when it waits for an
     event to happen before continuing.
  3) A disadvantage in this approach is that if a part of the code takes
     too long to execute, the subsequent blocks, though unrelated, will be
     blocked from executing.
  4) Consider a webserver that must respond to multiple requests for a resource.
  5) A synchronous execution model will block every other user’s request till it
     finishes processing the current request.
  */

  print("\n2. Asynchronous Programming:");
  File file = new File(Directory.current.path + "//data//contacts.txt");
  Future<String> f =
      file.readAsString(); // returns a future, this is Async method
  f.then(
      (data) => print(data)); // once file is read , call back method is invoked
  print(
      "Finished"); // this get printed first, showing fileReading is non blocking or async
  /*
  NOTE:

  1) The "end of main" executes first while the script continues reading the file.
  2) The Future class, part of dart:async, is used for getting the result of a
     computation after an asynchronous task has completed.
  3) This Future value is then used to do something after the computation finishes.
  4) Once the read operation is completed, the execution control is transferred within "then()".
  5) This is because the reading operation can take more time and so it doesn’t want to
     block other part of program.
  */
}

/*
OUTPUT:

1. Problem with Synchronous Programming:
Enter your name: Anurag
Hello, Anurag | Data-Type of input: String

2. Asynchronous Programming:
Finished
1) Anurag 
2) Ria
3) Pooja
4) Aishwarya
*/
