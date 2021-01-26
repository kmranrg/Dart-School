/// Decision Making

main() {
  // 1) if statement
  var num = 5;
  if (num > 0) {
    print("1. Number is positive.");
  }

  // 2) if...else statement
  num = 12;
  if (num % 2 == 0) {
    print("2. Even.");
  } else {
    print("2. Odd.");
  }

  // 3) else...if ladder
  num = 12;
  if (num > 0) {
    print("3. Number is positive.");
  } else if (num < 0) {
    print("3. Number is negative.");
  } else {
    print("3. Number is neither positive nor odd.");
  }

  // 4) switch...case
  var grade = "A";
  switch (grade) {
    case "A":
      print("4. Excellent.");
      break;

    case "B":
      print("4. Good");
      break;

    case "C":
      print("4. Fair");
      break;

    default:
      print("4. Invalid Choice!!");
      break;
  }
}
