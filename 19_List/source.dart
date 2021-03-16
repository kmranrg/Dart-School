/// List in Dart

main() {
  var res;

  res = [];
  res.add(10);
  res.add(120);
  print("1. $res | Date-Type: ${res.runtimeType}");

  /// List Properties

  // 1) first : it returns the first element in the list
  var l = ["Anurag", 20, 10.25, true];
  res = l.first;
  print("2. $res | Date-Type: ${res.runtimeType}");

  // 2) isEmpty : it returns true if collection has no elements
  res = l.isEmpty;
  print("3. $res | Date-Type: ${res.runtimeType}");

  // 2) isNotEmpty : it returns true if the collection has at least one element
  res = l.isNotEmpty;
  print("3. $res | Date-Type: ${res.runtimeType}");

  // 3) length : it returns the size of the list
  res = l.length;
  print("4. $res | Date-Type: ${res.runtimeType}");

  // 4) last : it returns the last element of the list
  res = l.last;
  print("5. $res | Date-Type: ${res.runtimeType}");

  // 5) reversed : returns an iterable object containing the list values in the reverse order
  res = l.reversed;
  print("6. $res | Date-Type: ${res.runtimeType}");

  // 6) single : it checks if the list has only one element and returns it but if it finds list with zero elements or more than 1 element then throws an exception
  var new_list = [12];
  res = new_list.single;
  print("7. $res | Date-Type: ${res.runtimeType}");

  /// Basic Operations on List

  // INSERTING ELEMENTS INTO LIST

  // 1) add() : it appends the specified value to the end of the List and returns a modified List object
  List n = [10, 20];
  n.add(30);
  print("8. $n | Date-Type: ${n.runtimeType}");

  // 2) addAll() : accepts multiple values separated by a comma and appends these to the List
  List m = [1, 2, 3];
  m.addAll([100, 200, 300]);
  print("9. $m | Date-Type: ${m.runtimeType}");

  // 3) insert() : this function accepts a value and inserts it at the specified index
  List x = [1, 2, 3, 4];
  x.insert(1, 100);
  print("10. $x | Date-Type: ${x.runtimeType}");

  // 4) insertAll() : this function inserts the given list of values, beginning from the index specified
  x = [1, 2, 3, 4];
  x.insertAll(1, [100, 200, 300]);
  print("11. $x | Date-Type: ${x.runtimeType}");

  // UPDATING LIST

  // 1) updating the index
  List y = [1, 2, 3];
  y[1] = 200;
  print("12. $y | Date-Type: ${y.runtimeType}");

  /*
  2) replaceRange() : this function replaces the value of the elements within the specified range

  SYNTAX: List.replaceRange(int start_index,int end_index,Iterable <items>)

  PARAMETER DESCRIPTION:
    1) start_index: an integer representing the index position to start replacing
    2) end_index: an integer representing the index position to stop replacing
    3) <items>: an iterable object that represents the updated values
  */
  y = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  y.replaceRange(1, 4, [
    100,
    200,
    300,
    400,
    500,
    600,
    700
  ]); // it will update the list elements from index 0 to 3, note than it will leave the 4th index value as it is.
  print("13. $y | Date-Type: ${y.runtimeType}");

  /// REMOVING LIST ELEMENTS

  // 1) remove(): function removes the first occurrence of the specified item in the list.This function returns true if the specified value is removed from the list.
  y = [1, 2, 3, 4, 5, 6];
  bool z;
  z = y.remove(2);
  print("14. $y | Date-Type: ${y.runtimeType}");
  print("15. $z | Date-Type: ${z.runtimeType}");

  // 2) removeAt() : function removes the value at the specified index and returns it
  y = [1, 2, 3, 4, 5, 6];
  res = y.removeAt(
      2); // it will remove the list element present at index 2 and it will return the deleted element
  print("16. $y | Date-Type: ${y.runtimeType}");
  print("17. $res | Date-Type: ${res.runtimeType}");

  // 3) removeLast(): function pops and returns the last item in the List
  y = [1, 2, 3, 4, 5, 6];
  res = y.removeLast();
  print("18. $y | Date-Type: ${y.runtimeType}");
  print("19. $res | Date-Type: ${res.runtimeType}");

  // 4) removeRange(): function removes the items within the specified range. It takes the first parameter as start position and second parameter as the end position and the range will be [start -> (end-1)]
  y = [1, 2, 3, 4, 5, 6];
  y.removeRange(1, 4); // it will remove the list elements from index 1 to 3
  print("20. $y | Date-Type: ${y.runtimeType}");
}

/*
OUTPUT:

1. [10, 120] | Date-Type: List<dynamic>
2. Anurag | Date-Type: String
3. false | Date-Type: bool
3. true | Date-Type: bool
4. 4 | Date-Type: int
5. true | Date-Type: bool
6. (true, 10.25, 20, Anurag) | Date-Type: ReversedListIterable<Object>
7. 12 | Date-Type: int
8. [10, 20, 30] | Date-Type: List<dynamic>
9. [1, 2, 3, 100, 200, 300] | Date-Type: List<dynamic>
10. [1, 100, 2, 3, 4] | Date-Type: List<dynamic>
11. [1, 100, 200, 300, 2, 3, 4] | Date-Type: List<dynamic>
12. [1, 200, 3] | Date-Type: List<dynamic>
13. [1, 100, 200, 300, 400, 500, 600, 700, 5, 6, 7, 8, 9, 10] | Date-Type: List<dynamic>
14. [1, 3, 4, 5, 6] | Date-Type: List<dynamic>
15. true | Date-Type: bool
16. [1, 2, 4, 5, 6] | Date-Type: List<dynamic>
17. 3 | Date-Type: int
18. [1, 2, 3, 4, 5] | Date-Type: List<dynamic>
19. 6 | Date-Type: int
20. [1, 5, 6] | Date-Type: List<dynamic>
Exited

*/
