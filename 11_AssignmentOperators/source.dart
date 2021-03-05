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

  var c;
  c = null; // now value of `c` is `null`
  print("I am $c and my data type is ${c.runtimeType}.");
  c ??= 5; // since, value of `c` is `null` so 5 will assign to `c`
  print("I am $c and my data type is ${c.runtimeType}.");
  c ??= 7; // since, value of `c` is not `null` so 7 will not assign to `c`
  print("I am $c and my data type is ${c.runtimeType}.");
}

/*
OUTPUT

a+=b : 5
a-=b : 2
a*=b' : 6
a/=b : 2.0
a%=b : 2.0
I am null and my data type is Null.
I am 5 and my data type is int.
I am 5 and my data type is int.
Exited

*/
