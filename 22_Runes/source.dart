/// Runes in Dart

/*
Theory:

1) Strings are a sequence of characters.
2) Dart represents strings as a sequence of Unicode UTF-16 code units.
3) Since a Dart string is a sequence of UTF-16 code units,
   32-bit Unicode values within a string are represented using a special syntax.
4) A rune is an integer representing a Unicode code point.
5) The String class in the dart:core library provides mechanisms to access runes.
6) String code units / runes can be accessed in three ways:
      (i) Using String.codeUnitAt() function
      (ii) Using String.codeUnits property
      (iii) Using String.runes property
*/

main() {
  var res;

  // String.codeUnitAt() Function
  String a = "Anurag";
  res = a.codeUnitAt(
      0); // it will return the UTF-16 code of character present at 0 index
  print("1. $res | Date-Type: ${res.runtimeType}");

  // String.codeUnits Property : This property returns an unmodifiable list of the UTF-16 code units of the specified string
  a = "anurag";
  res = a.codeUnits;
  print("2. $res | Date-Type: ${res.runtimeType}");

  // String.runes Property : This property returns an iterable of Unicode code-points of this string.Runes extends iterable.
  a = "Kumar Anurag";
  print("3. Printing runes along with the characters:");
  a.runes.forEach((int rune) {
    var character = new String.fromCharCode(rune);
    print(
        "\tRune: $rune - Data-Type: ${rune.runtimeType} | Character: $character - Data-Type: ${character.runtimeType}");
  });

  /*
  KNOWLEDGE CLOUD:

  1) Unicode code points are usually expressed as \uXXXX, where XXXX is a 4-digit hexadecimal value.
  2) To specify more or less than 4 hex digits, place the value in curly brackets.
  3) One can use the constructor of the Runes class in the dart:core library for the same.
  */

  // Display an emoji using Runes
  Runes emoji = new Runes("\u{1f605}");
  res = new String.fromCharCodes(emoji);
  print("4. $res | Date-Type: ${res.runtimeType}");
}

/*
OUTPUT:

1. 65 | Date-Type: int
2. [97, 110, 117, 114, 97, 103] | Date-Type: CodeUnits
3. Printing runes along with the characters:
	Rune: 75 - Data-Type: int | Character: K - Data-Type: String
	Rune: 117 - Data-Type: int | Character: u - Data-Type: String
	Rune: 109 - Data-Type: int | Character: m - Data-Type: String
	Rune: 97 - Data-Type: int | Character: a - Data-Type: String
	Rune: 114 - Data-Type: int | Character: r - Data-Type: String
	Rune: 32 - Data-Type: int | Character:   - Data-Type: String
	Rune: 65 - Data-Type: int | Character: A - Data-Type: String
	Rune: 110 - Data-Type: int | Character: n - Data-Type: String
	Rune: 117 - Data-Type: int | Character: u - Data-Type: String
	Rune: 114 - Data-Type: int | Character: r - Data-Type: String
	Rune: 97 - Data-Type: int | Character: a - Data-Type: String
	Rune: 103 - Data-Type: int | Character: g - Data-Type: String
4. 😅 | Date-Type: String
Exited

*/
