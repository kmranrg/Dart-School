/// Functions in Dart

/*
Theory:

1) Functions are the building blocks of readable, maintainable, and reusable code.
2) A function is a set of statements to perform a specific task.
*/

// function (without parameter) definition
demo() {
  print("Inside Demo function");
}

// function (with parameter) definition
int add(int x, int y) {
  return x + y;
}

// function (with optional positional parameter) definition
/*
Theory:

1) To specify optional positional parameters, use square [] brackets.
2) SYNTAX: void function_name(param1, [optional_param_1, optional_param_2]) { } 
*/
demo_positinal(a1, [a2, a3]) {
  print("\n$a1 | Data-Type: ${a1.runtimeType}");
  print("$a2 | Data-Type: ${a2.runtimeType}");
  print("$a3 | Data-Type: ${a3.runtimeType}");
  print("--");
}

// optional named function parameter
/*
Theory:

1) Unlike positional parameters, the parameters’ name must be specified while the value is being passed.
2) Curly brace {} can be used to specify optional named parameters.
3) SYNTAX: void function_name(a, {optional_param1, optional_param2}) { }
*/
demo_named(a1, {s1, s2}) {
  print(a1);
  print(s1);
  print(s2);
}

// Recursive dart functions
/*
Theory:

Recursion is a technique for iterating over an operation by having a
function call to itself repeatedly until it arrives at a result.
*/
factorial(num) {
  if (num <= 0) {
    return 1;
  } else {
    return (num * factorial(num - 1));
  }
}

// Lambda Functions
/*
Theory:

1) Lambda functions are a concise mechanism to represent functions.
2) These functions are also called as Arrow functions.
*/
print_Message() => print("hello anurag");
iAmArrowFunctionToo(a, b) => a + b;

main() {
  // function calling
  print("1. Function without parameter");
  demo();
  print("-----------------------------------");

  // function calling and printing the value it returns
  print("\n2. Function with parametere and return statement");
  print(add(5, 2));
  print("-----------------------------------");

  // function calling
  print("\n3. Function with optional positional parameters");
  demo_positinal(20, "Hello", "Anurag");
  demo_positinal(2.2222, 5 + 2, "hello " + "world");
  demo_positinal("Anurag", "world");
  print("-----------------------------------");

  // function calling
  print("\n4. Function with optional named parameters");
  demo_named(50, s2: "hello");
  print("-----------------------------------");

  // function calling
  print("\n5. Recursive dart functions");
  int fact = factorial(10);
  print(fact);
  print("-----------------------------------");

  // function calling
  print("\n6. Lambda functions");
  print_Message();
  int ans = iAmArrowFunctionToo(10, 20);
  print(ans);
  print("-----------------------------------");
}

/*
OUTPUT:

1. Function without parameter
Inside Demo function
-----------------------------------

2. Function with parametere and return statement
7
-----------------------------------

3. Function with optional positional parameters

20 | Data-Type: int
Hello | Data-Type: String
Anurag | Data-Type: String
--

2.2222 | Data-Type: double
7 | Data-Type: int
hello world | Data-Type: String
--

Anurag | Data-Type: String
world | Data-Type: String
null | Data-Type: Null
--
-----------------------------------

4. Function with optional named parameters
50
null
hello
-----------------------------------

5. Recursive dart functions
3628800
-----------------------------------

6. Lambda functions
hello anurag
30
-----------------------------------
Exited

*/
