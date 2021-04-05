/// Typedef in Dart

/*
Theory:

1) A typedef, or a function-type alias, helps to define pointers to executable code within memory.
2) Simply put, a typedef can be used as a pointer that references a function.
*/

typedef MyCalculationOperation(int firstNo, int secondNo); // function signature
// Note: The return type is not the part of the function signature

Add(int firstNo, int second) {
  print("Add Result: ${firstNo + second}");
}

Subtract(int firstNo, int second) {
  print("Subtract Result: ${firstNo - second}");
}

Multiply(int firstNo, int second) {
  print("Multiply Result: ${firstNo * second}");
}

Divide(int firstNo, int second) {
  print("Divide Result: ${firstNo / second}");
}

Calculator(int a, int b, MyCalculationOperation op) {
  print("Inside Calculator");
  op(a, b);
}

main() {
  MyCalculationOperation oper = Add;
  oper(10, 20);
  oper = Subtract;
  oper(10, 20);
  oper = Divide;
  oper(10, 20);

  print("\n------------------------\n");
  Calculator(10, 20, Add);
  Calculator(10, 20, Multiply);
  Calculator(10, 20, Divide);
  Calculator(10, 20, Subtract);
}

/*
OUTPUT:

Add Result: 30
Subtract Result: -10
Divide Result: 0.5

------------------------

Inside Calculator
Add Result: 30
Inside Calculator
Multiply Result: 200
Inside Calculator
Divide Result: 0.5
Inside Calculator
Subtract Result: -10
Exited

*/
