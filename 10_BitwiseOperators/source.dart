/// Bitwise Operators in Dart

/*
Theory:

Assumption:`a` and `b` are 1 bit numbers in binary form whereas `x` and `y` are numbers in decimal form.

1) Bitwise AND (a & b): returns true(1) if both a and b are true(1) otherwise false(0)
2) Bitwise OR (a | b): returns true(1) if any of a and b is true(1) otherwise false(0)
3) Bitwise XOR (a ^ b): returns true(1) only if a and b are different [means true(1)-false(0) or false(0)-true(1)] otherwise false(0)
4) Bitwise NOT (~a): inverts the bits of its operand (0 -> 1 and 1 -> 0)
5) Left Shift (x << y): it is equivalent of [ x / (2 raise to power y) ]
6) Signpropagating Right Shift (x << y): it is equivalent of [ x * (2 raise to power y) ]
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

  result = (a < b);
  print(
      "5. ${a.toRadixString(2)} < ${b.toRadixString(2)} => Binary Form: ${result}");

  result = (a > b);
  print(
      "6. ${a.toRadixString(2)} > ${b.toRadixString(2)} => Binary Form: ${result}");
}
