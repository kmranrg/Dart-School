import 'dart:collection';

/// Generics in Dart

/*
Theory:

1) Dart is an optionally typed language.
2) Collections in Dart are heterogeneous by default.
3) However, a Dart collection can be made to hold homogenous values.
4) The concept of Generics can be used to achieve the same.
5) The use of Generics enforces a restriction on the data type of the values that can be contained by the collection.
6) Such collections are termed as type-safe collections.
7) Type safety is a programming feature which ensures that a memory block can only contain data of a specific data type.
8) All Dart collections support type-safety implementation via generics.
*/

main() {
  print("1. Generic List:");
  List<String> l = [];
  l.add("Anurag");
  l.add("100");
  print("List: $l | Data-Type: ${l.runtimeType}");
  for (String item in l) {
    print("\t$item");
  }

  print("\n2. Generic Set:");
  Set<int> s = new Set<int>();
  s.add(10);
  s.add(102);
  print("Set: $s | Data-Type: ${s.runtimeType}");
  for (int item in s) {
    print("\t$item");
  }

  print("\n3. Generic Queue:");
  Queue<int> q = new Queue();
  q.add(100);
  q.add(200);
  q.add(500);
  q.removeFirst();
  print("Queue: $q | Data-Type: ${q.runtimeType}");

  print("\n3. Generic Map:");
  Map<String, int> marks = new Map();
  marks["english"] = 100;
  marks["science"] = 100;
  marks["mathematics"] = 100;
  print("Map: $marks | Data-Type: ${marks.runtimeType}");
}

/*
OUTPUT:

1. Generic List:
List: [Anurag, 100] | Data-Type: List<String>
	Anurag
	100

2. Generic Set:
Set: {10, 102} | Data-Type: _CompactLinkedHashSet<int>
	10
	102

3. Generic Queue:
Queue: {200, 500} | Data-Type: ListQueue<int>

3. Generic Map:
Map: {english: 100, science: 100, mathematics: 100} | Data-Type: _InternalLinkedHashMap<String, int>
Exited

*/
