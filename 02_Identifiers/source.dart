/// Identifiers in Dart

/*
THEORY: Rules for defining Identifiers

0) Identifiers can include both, characters and digits. However, the identifier cannot begin with a digit.
1) Identifiers cannot include special symbols except for underscore (_) or a dollar sign ($).
2) Identifiers cannot be keywords.
3) They must be unique.
4) Identifiers are case-sensitive.
5) Identifiers cannot contain spaces.
*/

main() {
  // Example 1
  var $var = 2;
  print("1.");
  print($var);
  print("Type: " + $var.runtimeType.toString());

  // Example 2
  var a = 2.2;
  print("\n2.");
  print(a);
  print("Type: " + a.runtimeType.toString());

  // Example 3
  var b = "Anurag";
  print("\n3.");
  print(b);
  print("Type: " + b.runtimeType.toString());

  // Example 4
  var c = true;
  print("\n4.");
  print(c);
  print("Type: " + c.runtimeType.toString());
}

/*
Valid Identifiers:

1) firstName
2) first_name	
3) num1	
4) $result
5) Var

Invalid Identifiers:

1) var // because it is pre-defined keyword in dart
2) first name // because it contains space
3) first-name // because it contains special character `-`
4) 1number // because it starts with a number
*/

/*
OUTPUT:

1.
2
Type: int

2.
2.2
Type: double

3.
Anurag
Type: String

4.
true
Type: bool
Exited

*/
