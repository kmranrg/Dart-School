/// Arithmetic Operators in Dart

main() {
  var a;
  a = 5;
  var b;
  b = 2;
  var res;
  print("Type of res variable is ${res.runtimeType}");

  // Addition Operator
  res = a + b;
  print("1. Addition: $res");
  print("Now, type of res variable is ${res.runtimeType}");

  // Subtraction Operator
  res = a - b;
  print("2. Subtraction: $res");

  // Multiplication Operator
  res = a * b;
  print("3. Multiplication: $res");

  // Division Operator
  res = a / b;
  print("4. Division: $res");
  print("Now, type of res variable is ${res.runtimeType}");

  // Floor Division or Integer Division Operator
  res = a ~/ b;
  print("5. Floor Division or Integer Division is ${res}");
  print("Now, type of res variable is ${res.runtimeType}");

  // Modulus Operator : gives remainder
  res = a % b;
  print("6. Modulus: $res");

  // String Repetition
  a = "anurag";
  b = 2;
  res = a * b;
  print("7. String Repetition: ${res}");

  // String Concatenation
  a = "Hello";
  b = "Anurag";
  res = a + b;
  print("8. String Concatenation: $res");
}
