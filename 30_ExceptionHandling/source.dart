/// Exception Handling

/*
Theory:

1) An exception (or exceptional event) is a problem that arises during the execution of a program.
2) When an Exception occurs the normal flow of the program is disrupted and the program/Application terminates abnormally.
3) Built-in Dart Exceptions:
    (i) DeferredLoadException : Thrown when a deferred library fails to load.
    (ii) FormatException : Exception thrown when a string or some other data does not have an expected format and cannot be parsed or processed.
    (iii) IntegerDivisionByZeroException : Thrown when a number is divided by zero.
    (iv) IOException : Base class for all Inupt-Output related exceptions.
    (v) IsolateSpawnException : Thrown when an isolate cannot be created.
    (vi) Timeout : Thrown when a scheduled timeout happens while waiting for an async result.
*/

class MyAmtException implements Exception {
  String myErrMsg() => "Amount should be geater than zero"; // arrow function
}

main() {
  /*
  KNOWLEDGE CLOUD:

  1) The `try` block embeds code that might possibly result in an exception.
  2) The `on` block is used when the exception type needs to be specified.
  3) The `catch` block is used when the handler needs the exception object.
  4) The `finally` block is always get executed no matter the exception is present or not.
  5) The `try` block must be followed by either exactly one `on` / `catch` block or one `finally` block (or one of both).

  NOTE:

  1) A code snippet can have more than one `on` / `catch` blocks to handle multiple exceptions.
  2) The `on` block and the `catch` block are mutually inclusive, i.e. a `try` block can be associated with both- the `on` block and the `catch` block.
  */

  print("1. try-on Block:");
  int a = 12;
  int b = 0;
  int res;

  try {
    res = a ~/ b;
    print(res);
  } on IntegerDivisionByZeroException {
    print("can not divide a number by 0...");
  }

  print("\n2. try-catch Block:");
  try {
    res = a ~/ b;
    print(res);
  } catch (e) {
    print(e);
    print("can not divide a number by 0...");
  }

  print("\n3. try-on-catch Block:");
  try {
    res = a ~/ b;
    print(res);
  } on IntegerDivisionByZeroException catch (e) {
    print(e);
    print("can not divide a number by 0...");
  }

  print("\n4. try-on-finally Block:");
  try {
    res = a ~/ b;
    print(res);
  } on IntegerDivisionByZeroException {
    print("can not divide a number by 0...");
  } finally {
    print("bye-bye");
  }

  print("\n5. Throwing an Exception:");
  /*
  KNOWLEDGE CLOUD:

  1) The throw keyword is used to explicitly raise an exception.
  2) A raised exception should be handled to prevent the program from exiting abruptly.
  */
  try {
    test_age(20);
    test_age(-2);
  } catch (err) {
    print("Age can't be negative.");
  }

  print("\n6. Custom Exception or User-defined Exception:");
  /*
  KNOWLEDGE CLOUD:

  1) Every exception type in Dart is a subtype of the built-in class Exception.
  2) Dart enables creating custom exceptions by extending the existing ones.
  */
  try {
    withdraw_amt(100);
    withdraw_amt(-199);
  } catch (e) {
    print(e);
    MyAmtException m = new MyAmtException();
    print(m.myErrMsg());
  } finally {
    print('Ending requested operation.....');
  }
}

void withdraw_amt(int amt) {
  if (amt <= 0) {
    throw new MyAmtException();
  } else {
    print("Congratulations!! Withdrawal successful...");
  }
}

void test_age(int age) {
  if (age < 0) {
    throw new FormatException();
  } else {
    print("Congratulations!! valid age...");
  }
}

/*
OUTPUT:

1. try-on Block:
can not divide a number by 0...

2. try-catch Block:
IntegerDivisionByZeroException
can not divide a number by 0...

3. try-on-catch Block:
IntegerDivisionByZeroException
can not divide a number by 0...

4. try-on-finally Block:
can not divide a number by 0...
bye-bye

5. Throwing an Exception:
Congratulations!! valid age...
Age can't be negative.

6. Custom Exception or User-defined Exception:
Congratulations!! Withdrawal successful...
Instance of 'MyAmtException'
Amount should be geater than zero
Ending requested operation.....
Exited

*/
