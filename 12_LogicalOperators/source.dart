/// Logical Operators

/*
Theory:

1) && (Logical AND): the operator returns true only if all the expressions specified return true
2) || (Logical OR): the operator returns true if at least one of the expressions specified return true
3) ! (Logical NOT): the operator returns the inverse of the expression’s result. For E.g.: !(7>5) returns false
*/

main() {
  var age;
  var height;
  var result;

  age = 10;
  height = 120;

  result = (age >= 18) && (height >= 100);
  print(result);

  result = (age >= 18) || (height >= 100);
  print(result);

  result = !(age >= 18);
  print(result);
}

/*
OUTPUT

false
true
true
Exited

*/
