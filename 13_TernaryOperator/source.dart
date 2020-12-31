/// Ternary Operator

/*
Theory:

1) condition ? expr1 : expr2
2) If condition is true, then the expression evaluates expr1 (and returns its value)
3) Otherwise, it evaluates and returns the value of expr2.
*/

main() {
  var canVote;
  var age;

  age = 18;

  canVote = age >= 18 ? "eligible to vote" : "not eligible to vote";
  print(canVote);
}

/*
OUTPUT

eligible to vote
Exited

*/
