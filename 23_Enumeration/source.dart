/// Enumeration in Dart

/*
Theory:

1) An enumeration is used for defining named constant values.
2) An enumerated type is declared using the enum keyword.
*/

enum Status {
  none, // it has index 0
  running, // it has index 1
  stopped, //it has index 2
  paused // it has index 3
}

main() {
  // printing all values of enumeration at once
  print("1. ${Status.values} | Data-Type: ${Status.values.runtimeType}");

  // printing enumeration values using loop
  print("2. Printing enumeration values using forEach loop:");
  Status.values.forEach((element) => print(
      "\t$element | Index: ${element.index} | Data-Type of enumeration element: ${element.runtimeType}"));

  // details of only one element of enumeration
  print(
      "3. Running: ${Status.running} | Data-Type: ${Status.running.runtimeType} | Index Value: ${Status.running.index}");

  // printing the enumeration element using it's index value
  print("4. Stopped Status from it's index value: ${Status.values[2]}");
}

/*
OUTPUT:

1. [Status.none, Status.running, Status.stopped, Status.paused] | Data-Type: List<Status>
2. Printing enumeration values using forEach loop:
	Status.none | Index: 0 | Data-Type of enumeration element: Status
	Status.running | Index: 1 | Data-Type of enumeration element: Status
	Status.stopped | Index: 2 | Data-Type of enumeration element: Status
	Status.paused | Index: 3 | Data-Type of enumeration element: Status
3. Running: Status.running | Data-Type: Status | Index Value: 1
4. Stopped Status from it's index value: Status.stopped
Exited

*/
