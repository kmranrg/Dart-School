/// Assignment Operators

/*
Theory:

1) =(simple assignment) : assigns values from the right side operand to the left side operand
2) ??= : assigns the value only if the variable is null
3) += : it adds the right operand to the left operand and assigns the result to the left operand
4) -= : it subtracts the right operand from the left operand and assigns the result to the left operand
5) *= : it multiplies the right operand with the left operand and assigns the result to the left operand
6) /= : it divides the left operand with the right operand and assigns the result to the left operand
*/

main() {
  var a, b;

  a = 2;
  b = 3;

  a += b;
  print("a+=b : ${a}");

  a -= b;
  print("a-=b : ${a}");

  a *= b;
  print("a*=b' : ${a}");

  a /= b;
  print("a/=b : ${a}");

  a %= b;
  print("a%=b : ${a}");
}

/*
OUTPUT

a+=b : 5
a-=b : 2
a*=b' : 6
a/=b : 2.0
a%=b : 2.0
Exited

*/
