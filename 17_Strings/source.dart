/// Strings in Dart

/*
Theory:

1) String values in Dart can be represented using either single or double or triple quotes.
2) Single line strings are represented using single or double quotes.
3) Triple quotes are used to represent multi-line strings.
*/

main() {
  String s1 = 'I am Anurag';
  String s2 = "How are you";
  String s3 = """
  I am a multi-line
  string.
  """;
  print("1. $s1 | Data-Type: ${s1.runtimeType}");
  print("2. $s2 | Data-Type: ${s2.runtimeType}");
  print("3.\n$s3 | Data-Type: ${s3.runtimeType}");

  // accesing string using index no
  String s;
  s = "anurag";
  print("4. ${s[0]} | Data-Type: ${s[0].runtimeType}");

  /*
  Mutability of String:

  1) Strings are immutable.
  2) However, strings can be subjected to various operations and the resultant
     string can be stored as a new value.
  */

  // String Interpolation or Concatenation: the process of addting a string into another string
  s1 = "hello";
  s2 = "anurag";
  s = s1 + s2;
  print("5. The concatenated string: $s | Data-Type: ${s.runtimeType}");

  /// String Properties

  // 1) codeUnits : returns a list of the UTF-16 code units of a given string
  s = "ABC@abc";
  var res;
  res =
      s.codeUnits; // it will return the UTF-16 or ASCII code of a given string
  print(
      "6. UTF-16 or ASCII code of ABC@abc is: $res | Data-Type: ${res.runtimeType}");

  // 2) isEmpty: returns true if the string is empty; else returns false
  s = "";
  res = s.isEmpty;
  print("7. isEmpty: $res | Data-Type: ${res.runtimeType}");

  // 3) length : returns the length of the string including space, tab and newline characters
  s = "Kumar Anurag";
  res = s.length;
  print("8. The length of string is: $res | Data-Type: ${res.runtimeType}");

  /// String Methods

  // 1) toLowerCase() : returns a new string by converting all characters in the given string to lower case
  s = "THe bLack BrowN FOx";
  res = s.toLowerCase();
  print("9. $res | Data-Type: ${res.runtimeType}");

  // 2) toUpperCase() : returns a new string by converting all characters in the given string to upper case
  s = "THe bLack BrowN FOx";
  res = s.toUpperCase();
  print("10. $res | Data-Type: ${res.runtimeType}");

  // 3) trim() : returns a new string by removing all leading and trailing spaces. However, this method doesn’t discard spaces between two strings.
  s = "     Kumar      Anurag      ";
  res = s.trim();
  print("11. $res | Data-Type: ${res.runtimeType}");

  /*
  4) compareTo() : compares one string with another and
                   returns 0, if strings are equal or
                   returns 1, if first string is greather than second
                   and returns -1, if first string is smaller than second one.
  */
  s1 = "A";
  s2 = "B";
  res = s1.compareTo(s2);
  print("12. $res | Data-Type: ${res.runtimeType}");

  /*
  5) replaceAll() : replaces all substrings that match the specified
                    pattern with a given value.
    
    Parameter Description-

    i) First Parameter: the string to be replaced
    ii) Second Parameter: the substitution string
  */
  s = "Hello World! How are you World?";
  res = s.replaceAll("World", "Anurag");
  print("13. $res | Data-Type: ${res.runtimeType}");

  /*
  6) split() : splits the string at mathces of the specified
               delimiter and returns a list of substrings
  */
  s = "Cricket-Football-Hockey";
  res = s.split("-");
  print("14. $res | Data-Type: ${res.runtimeType}");

  /*
  7) substring() : it returns the substring of a string based on the
                   starting index no(inclusive i.e. first character is included) and 
                   ending index no(exclusive i.e. last character is not included).
  */
  s = "Hello Anurag!";
  res = s.substring(6);
  print("15. $res | Data-Type: ${res.runtimeType}");
  res = s.substring(2, 6); // it will leave the last character
  print("16. $res | Data-Type: ${res.runtimeType}");

  // 8) toString() : returns a string representation of an object
  int n = 120;
  res = n.toString();
  print("17. $res | Data-Type: ${res.runtimeType}");

  // 9) codeUnitAt() : returns the 16-bit UTF-16 code unit at the given index
  s = "Hello - Anurag";
  res = s.codeUnitAt(8);
  print("18. $res | Data-Type: ${res.runtimeType}");
}

/*
OUTPUT:

1. I am Anurag | Data-Type: String
2. How are you | Data-Type: String
3.
  I am a multi-line
  string.
   | Data-Type: String
4. a | Data-Type: String
5. The concatenated string: helloanurag | Data-Type: String
6. UTF-16 or ASCII code of ABC@abc is: [65, 66, 67, 64, 97, 98, 99] | Data-Type: CodeUnits
7. isEmpty: true | Data-Type: bool
8. The length of string is: 12 | Data-Type: int
9. the black brown fox | Data-Type: String
10. THE BLACK BROWN FOX | Data-Type: String
11. Kumar      Anurag | Data-Type: String
12. -1 | Data-Type: int
13. Hello Anurag! How are you Anurag? | Data-Type: String
14. [Cricket, Football, Hockey] | Data-Type: List<String>
15. Anurag! | Data-Type: String
16. llo  | Data-Type: String
17. 120 | Data-Type: String
18. 65 | Data-Type: int
Exited

*/
