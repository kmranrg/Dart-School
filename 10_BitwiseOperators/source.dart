/// Bitwise Operators in Dart

/*
Theory:

Assumption:`a` and `b` are 1 bit numbers in binary form whereas `x` and `y` are numbers in decimal form.

1) Bitwise AND (a & b): returns true(1) if both a and b are true(1) otherwise false(0)
2) Bitwise OR (a | b): returns true(1) if any of a and b is true(1) otherwise false(0)
3) Bitwise XOR (a ^ b): returns true(1) only if a and b are different [means true(1)-false(0) or false(0)-true(1)] otherwise false(0)
4) Bitwise NOT (~x): adds one to x and then multiply it with -1 and returns the final answer ( i.e. -(x+1) )
5) Left Shift (x << y): it is equivalent of [ x * (2 raise to power y) ]
6) Signpropagating Right Shift (x << y): it is equivalent of [ x / (2 raise to power y) ]. Note: In final result, it ignores the after decimal values
*/

main() {
  var a = 2; // Bit presentation 10
  var b = 3; // Bit presentation 11
  print("a = ${a} and b = ${b} ");

  var result;
  var binaryForm;

  result = (a & b);
  binaryForm =
      result.toRadixString(2); // it will convert the result into binary form
  print(
      "1. ${a.toRadixString(2)} & ${b.toRadixString(2)} => Binary Form: ${binaryForm} | Decimal Form: ${result}");

  result = (a | b);
  binaryForm = result.toRadixString(2);
  print(
      "2. ${a.toRadixString(2)} | ${b.toRadixString(2)} => Binary Form: ${binaryForm} | Decimal Form: ${result}");

  result = (a ^ b);
  binaryForm = result.toRadixString(2);
  print(
      "3. ${a.toRadixString(2)} ^ ${b.toRadixString(2)} => Binary Form: ${binaryForm} | Decimal Form: ${result}");

  result = (~b);
  binaryForm = result.toRadixString(2);
  print(
      "4. ~${b.toRadixString(2)} => Binary Form: ${binaryForm} | Decimal Form: ${result}");

  result = (a << b);
  print("5. ${a} << ${b} => Binary Form: ${result}");

  result = (a >> b);
  print("6. ${a} >> ${b} => Binary Form: ${result}");
}

/*
OUTPUT

a = 2 and b = 3
1. 10 & 11 => Binary Form: 10 | Decimal Form: 2
2. 10 | 11 => Binary Form: 11 | Decimal Form: 3
3. 10 ^ 11 => Binary Form: 1 | Decimal Form: 1
4. ~11 => Binary Form: -100 | Decimal Form: -4
5. 2 << 3 => Binary Form: 16
6. 2 >> 3 => Binary Form: 0
Exited

*/
