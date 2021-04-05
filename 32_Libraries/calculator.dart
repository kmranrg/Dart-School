library calculator_lib;

import 'dart:math'; // NOTE: import statement is present after the library statement

int add(int a, int b) {
  print("Inside add method of calculator library...");
  return a + b;
}

int modulus(int a, int b) {
  print("Inside modulus method of calculator library...");
  return a + b;
}

int random(int a) {
  print("Inside random method of calculator library...");
  return new Random().nextInt(a);
}
