import 'dart:collection';

/// Collections in Dart

/*
Theory:

1) Dart, unlike other programming languages, doesn’t support arrays.
2) Dart collections can be used to replicate data structures like an array.
3) The dart:core library and other classes enable Collection support in Dart scripts.
4) Dart collections can be basically classified as:
    (i) List
    (ii) Set
    (iii) HashSet
    (iv) Maps
    (v) Queue
*/

main() {
  print("1. List:");
  List l = [1, 2, 3];
  l.add("Anurag");
  print("\tData-Type: ${l.runtimeType}");
  print("\tValues:");
  for (var item in l) {
    print("\t$item");
  }

  print("\n2. Set:");
  Set s = new Set();
  s.add(100);
  s.add("hello");
  print("\tData-Type: ${s.runtimeType}");
  print("\tValues:");
  for (var item in s) {
    print("\t$item");
  }

  // Set.from()
  Set mySet = new Set.from([10, 20, 30]);
  print("\n\tSet.from()");
  print("\tData-Type: ${mySet.runtimeType}");
  print("\tValues:");
  for (var item in mySet) {
    print("\t$item");
  }

  print("\n3. HashSet:");
  /*
  KNOWLEDGE CLOUD:

  1) A HashSet is an unordered hash-table based Set implementation.
  2) The add() function can be used to populate a HashSet instance.
  3) The addAll() function allows adding multiple values to the HashSet.
  4) The remove() function removes the value passed to it.
  5) The clear() function removes all the entries from the HashSet.
  */

  print("=> Adding values in a HashSet");
  Set numberSet = new HashSet();
  numberSet.add(100);
  numberSet.add("Anurag");
  numberSet.add(102.22);
  numberSet.add("hello");
  numberSet.add(120);
  print("\tData-Type: ${numberSet.runtimeType}");
  print("\tValues:");
  for (var item in numberSet) {
    print("\t$item");
  }

  print("=> Adding multiple values to a HashSet");
  Set s2 = new HashSet();
  s2.addAll([10, 20, 30]);
  print("\tData-Type: ${s2.runtimeType}");
  print("\tValues:");
  for (var item in s2) {
    print("\t$item");
  }

  print("=> Removing the values from HashSet");
  Set s3 = new HashSet();
  s3.addAll([100, 200, 300, 400]);
  s3.remove(200);
  print(s3);
  s3.clear();
  print(s3);

  print("\n4. Map:");
  var details = new Map();
  details["username"] = "admin";
  details["pass"] = 2020;
  print("\t$details");

  print("\n5. Queue:");
  Queue queue = new Queue();
  print("=> Adding values to Queue");
  queue.add(10);
  queue.addAll([20, 30, 40]);
  print("\tData-Type: ${queue.runtimeType}");
  print("\tValues:");
  for (var item in queue) {
    print("\t$item");
  }

  print("\n=> Adding values at the begining and end of the queue");
  queue.addFirst(5000); // it will add the value at the starting of queue
  queue.addLast("Bye-Bye"); // it will add the value at the end of the queue
  print(queue);

  print("\n=> Iterating through the Collections");
  Queue q = new Queue();
  q.addAll(["Anurag", 100, 200, 300, 10, 22]);
  Iterator i = q.iterator;
  print(q);
  print(i.current);
  print("Data-Type: ${i.runtimeType} | Value: $i");
  while (i.moveNext()) {
    print("\t ${i.current}");
  }
  print(i.current);
}

/*
OUTPUT:

1. List:
	Data-Type: List<dynamic>
	Values:
	1
	2
	3
	Anurag

2. Set:
	Data-Type: _CompactLinkedHashSet<dynamic>
	Values:
	100
	hello

	Set.from()
	Data-Type: _CompactLinkedHashSet<dynamic>
	Values:
	10
	20
	30

3. HashSet:
=> Adding values in a HashSet
	Data-Type: _HashSet<dynamic>
	Values:
	120
	Anurag
	102.22
	hello
	100
=> Adding multiple values to a HashSet
	Data-Type: _HashSet<dynamic>
	Values:
	10
	20
	30
=> Removing the values from HashSet
{400, 300, 100}
{}

4. Map:
	{username: admin, pass: 2020}

5. Queue:
=> Adding values to Queue
	Data-Type: ListQueue<dynamic>
	Values:
	10
	20
	30
	40

=> Adding values at the begining and end of the queue
{5000, 10, 20, 30, 40, Bye-Bye}

=> Iterating through the Collections
{Anurag, 100, 200, 300, 10, 22}
null
Data-Type: _ListQueueIterator<dynamic> | Value: Instance of '_ListQueueIterator<dynamic>'
	 Anurag
	 100
	 200
	 300
	 10
	 22
null
Exited

*/
