/// Maps in Dart

/*
Theory:

1) The Map object is a simple key-value pair.
2) Keys and values in a map can be of any type.
3) Map object is mutable in Dart.
*/

main() {
  var res;

  // Making a Map variable using literal method
  var details = {"username": "developer", "pass": 404};
  print("1. $details | Data-Type: ${details.runtimeType}");

  // Making a Map variable using constructor method
  Map moon = new Map();
  moon["shape"] = "sphere";
  moon["size"] = "very large";
  print("2. $moon | Data-Type: ${moon.runtimeType}");

  // Adding values to a map
  moon["comes at"] = "night";
  print("3. $moon | Data-Type: ${moon.runtimeType}");

  /// Map Properties

  // 1) keys: returns an iterable object representing keys
  res = moon.keys;
  print("4. $res | Data-Type: ${res.runtimeType}");

  // 2) values: returns an iterable object representing values of the map
  res = moon.values;
  print("5. $res | Data-Type: ${res.runtimeType}");

  // 3) length: returns the size of the map
  res = moon.length;
  print("6. $res | Data-Type: ${res.runtimeType}");

  // 4) isEmpty: returns true if map is empty
  res = moon.isEmpty;
  print("7. $res | Data-Type: ${res.runtimeType}");

  // 5) isEmpty: returns true if map has atleast one item
  res = moon.isNotEmpty;
  print("8. $res | Data-Type: ${res.runtimeType}");

  // Map Functions

  // 1) addAll() : this function adds all the key-value pairs to the map
  Map person = {"name": "anurag", "age": 20};
  person.addAll({"country": "India", "havingGirlFriend": "not sure"});
  print("9. $person | Data-Type: ${person.runtimeType}");

  // 2) clear() : removes all key-value pairs from map
  person.clear();
  print("10. $person | Data-Type: ${person.runtimeType}");

  /*
  3) remove():
        (i) Removes key and its associated value, if present, from the map.
        (ii) The function also returns the value of that particular key.
  */
  person = {"name": "anurag", "age": 20};
  res = person.remove("age");
  print("11. $person | Data-Type: ${person.runtimeType}");
  print("12. $res | Data-Type: ${res.runtimeType}");

  // 4) forEach() : Applies the specified function on every Map entry. In other words, forEach enables iterating through the Map’s entries.
  person = {"name": "anurag", "age": 20};
  print("13. Elements of Person Map:");
  var c = 0;
  person.forEach((key, value) {
    c++;
    print("\tLOOP -> $c");
    print("\tKEY: ${key} | VALUE: $value");
    print("\t-----------");
  });

  // NOTE: If we have just one statement in forEach function, then we can use Arrow Function Notation also.
  print("14. Elements of Person Map:");
  person.forEach((key, value) => {print("\tKEY: ${key} | VALUE: $value")});
}

/*
OUTPUT:

1. {username: developer, pass: 404} | Data-Type: _InternalLinkedHashMap<String, Object>
2. {shape: sphere, size: very large} | Data-Type: _InternalLinkedHashMap<dynamic, dynamic>
3. {shape: sphere, size: very large, comes at: night} | Data-Type: _InternalLinkedHashMap<dynamic, dynamic>
4. (shape, size, comes at) | Data-Type: _CompactIterable<dynamic>
5. (sphere, very large, night) | Data-Type: _CompactIterable<dynamic>
6. 3 | Data-Type: int
7. false | Data-Type: bool
8. true | Data-Type: bool
9. {name: anurag, age: 20, country: India, havingGirlFriend: not sure} | Data-Type: _InternalLinkedHashMap<dynamic, dynamic>
10. {} | Data-Type: _InternalLinkedHashMap<dynamic, dynamic>
11. {name: anurag} | Data-Type: _InternalLinkedHashMap<dynamic, dynamic>
12. 20 | Data-Type: int
13. Elements of Person Map:
	LOOP -> 1
	KEY: name | VALUE: anurag
	-----------
	LOOP -> 2
	KEY: age | VALUE: 20
	-----------
14. Elements of Person Map:
	KEY: name | VALUE: anurag
	KEY: age | VALUE: 20
Exited

*/
