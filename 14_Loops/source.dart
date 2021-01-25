/// Loops in Dart

/*
Theory:

There are two types of loops in dart:

1) Definite Loop: A loop whose number of iterations are definite/fixed is termed as definite loop.
                  Example: for loop, for...in loop
2) Indefinite Loop: An indefinite loop is used when the number of iterations in a loop is indeterminate or unknown.
                    Example: while loop, do...while loop

*/

main() {
  // 1) for loop
  // Print first 10 natural numbers using for loop
  print("1. First 10 natural numbers using for loop:");
  for (var i = 1; i <= 10; i++) {
    print(i);
  }

  // 2) for...in loop
  var obj = [1, 2, 3, 4, 5, 6, "Anurag"];
  print("\n2. for...in loop:");
  for (var i in obj) {
    print(i);
  }

  // 3) while loop
  // Print factorial of 5 using while loop
  var n = 5;
  var factorial = 1;
  while (n > 1) {
    factorial *= n;
    n--;
  }
  print("\n3. The factorial of 5 is ${factorial}.");

  // 4) do...while loop
  // Print first 10 natural numbers using do...while loop
  var a = 1;
  print("\n4. First 10 natural numbers using do...while loop:");
  do {
    print(a);
    a++;
  } while (a <= 10);

  // 5) break : it is used to end the loop
  print("\n5. break:");
  for (var i = 1; i <= 10; i++) {
    if (i == 5) {
      break;
    } else {
      print(i);
    }
  }

  // 6) continue : it is used to skip the loop condition
  print("\n6. continue:");
  for (var i = 1; i <= 10; i++) {
    if (i == 5) {
      continue;
    } else {
      print(i);
    }
  }

  /*
  Theory: Using Labels to Control the Flow

  1) A label is simply an identifier followed
    by a colon (:) that is applied to a statement or a block of code.
  2) A label can be used with break and continue to control the flow 
    more precisely.

  IMPORTANT NOTE: 

  1) Line breaks are not allowed between the ‘continue’ or ‘break’
    statement and its label name.
  2) Also, there should not be any other statement in between a label 
    name and an associated loop.
  */

  print("\n7. Label with break:");
  outerloop: // This is the label name
  for (var i = 0; i < 5; i++) {
    print("Outerloop: ${i}");
    innerloop:
    for (var j = 0; j < 5; j++) {
      if (j > 3) break;

      // Quit the innermost loop
      if (i == 2) break innerloop;

      // Do the same thing
      if (i == 4) break outerloop;

      // Quit the outer loop
      print("Innerloop: ${j}");
    }
  }

  print("\n8. Label with continue:");
  outerloop: // This is the label name
  for (var i = 0; i < 3; i++) {
    print("Outerloop:${i}");

    for (var j = 0; j < 5; j++) {
      if (j == 3) {
        continue outerloop;
      }
      print("Innerloop:${j}");
    }
  }
}

/*
OUTPUT

1. First 10 natural numbers using for loop:
1
2
3
4
5
6
7
8
9
10

2. for...in loop:
1
2
3
4
5
6
Anurag

3. The factorial of 5 is 120.

4. First 10 natural numbers using do...while loop:
1
2
3
4
5
6
7
8
9
10

5. break:
1
2
3
4

6. continue:
1
2
3
4
6
7
8
9
10

7. Label with break:
Outerloop: 0
Innerloop: 0
Innerloop: 1
Innerloop: 2
Innerloop: 3
Outerloop: 1
Innerloop: 0
Innerloop: 1
Innerloop: 2
Innerloop: 3
Outerloop: 2
Outerloop: 3
Innerloop: 0
Innerloop: 1
Innerloop: 2
Innerloop: 3
Outerloop: 4

8. Label with continue:
Outerloop:0
Innerloop:0
Innerloop:1
Innerloop:2
Outerloop:1
Innerloop:0
Innerloop:1
Innerloop:2
Outerloop:2
Innerloop:0
Innerloop:1
Innerloop:2
Exited

*/
