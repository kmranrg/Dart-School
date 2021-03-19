/// Symbols in Dart

/*
Theory:

1) Symbols in Dart are opaque, dynamic string name used in reflecting out metadata from a library.
2) In Dart reflection specific classes are available in the `dart:mirrors` package.
3) This library works in both web applications and command line applications.
*/

import 'dart:core';
import 'dart:mirrors';
import 'Anurag.dart';

void main() {
  /*
  Since, we have loaded our 'Anurag.dart' library. Now, we will
  search for Anurag class with the help of Symbol type.
  */

  // library name stored as Symbol
  Symbol lib = new Symbol("anurag_lib");

  // class name stored as Symbol
  Symbol classToSearch = new Symbol("KumarAnurag");

  if (isClassAvailabeInLibrary(lib, classToSearch)) {
    // searches the Anurag class in anurag_lib
    print("\nClass Found");
    KumarAnurag a = new KumarAnurag();
    a.m1();
    print("${a.runtimeType}");
    Pooja p = new Pooja();
    p.p1();
  }

  // display all the instance methods of a class `KumarAnurag`
  reflect_InstanceMethods(lib, classToSearch);

  /// Symbol to String Conversion

  Symbol name = new Symbol("Kumar Anurag");
  Symbol instagram_id = #kmranrg; // short-cut method for making Symbol variable

  String name_str = MirrorSystem.getName(name);
  String instagram_id_str = MirrorSystem.getName(instagram_id);

  print("\n");
  print("$name -> ${name.runtimeType}");
  print("$instagram_id -> ${instagram_id.runtimeType}");
  print("$name_str -> ${name_str.runtimeType}");
  print("$instagram_id_str -> ${instagram_id_str.runtimeType}");
}

bool isClassAvailabeInLibrary(Symbol libraryName, Symbol className) {
  MirrorSystem mirrorSystem = currentMirrorSystem();
  LibraryMirror libraryMirror = mirrorSystem.findLibrary(libraryName);

  if (libraryMirror != Null) {
    print("Library Found");
    print("\nchecking class details...");
    print("No of classes present: ${libraryMirror.declarations.length}");

    print("\nClasses which are present in `anurag_lib` library");
    libraryMirror.declarations.forEach((s, d) =>
        print("$s | Type: ${s.runtimeType} => $d | Type: ${d.runtimeType}"));
  }
  if (libraryMirror.declarations.containsKey(className)) return true;
  return false;
}

void reflect_InstanceMethods(Symbol libraryName, Symbol className) {
  MirrorSystem mirrorSystem = currentMirrorSystem();
  LibraryMirror libraryMirror = mirrorSystem.findLibrary(libraryName);

  if (libraryMirror != Null) {
    print("\nLibrary Found");
    print("\nchecking the class details...");
    print("No of classes present: ${libraryMirror.declarations.length}");

    if (libraryMirror.declarations.containsKey(className))
      print("\nClass KumarAnurag found...");
    ClassMirror classMirror = reflectClass(KumarAnurag);

    /*
    KNOWLEDGE CLOUD:
    
    In the above statement, instead of `KumarAnurag`, we can also
    give the obj.runtimeType as parameter to reflectClass()

    IMPLEMENTATION: 
    
    KumarAnurag obj = new KumarAnurag();
    ClassMirror classMirror = reflectClass(obj.runtimeType);
    */
    print(
        "\nNo of instance methods present in class `KumarAnurag`: ${classMirror.instanceMembers.length} ");
    classMirror.instanceMembers.forEach((key, value) => print(
        "$key | Type: ${key.runtimeType} => $value | Type: ${value.runtimeType}"));
    /* 
    NOTE:
    
    The above statement will print all the instance methods including the instance methods
    which Dart gives by-defalut to a class like `==`, `hashCode`, `toString`, `noSuchMethod`
    and `runtimeType`.
    */
  }
}

/*
OUTPUT:

Library Found

checking class details...
No of classes present: 2

Classes which are present in `anurag_lib` library
Symbol("KumarAnurag") | Type: Symbol => ClassMirror on 'KumarAnurag' | Type: _ClassMirror
Symbol("Pooja") | Type: Symbol => ClassMirror on 'Pooja' | Type: _ClassMirror

Class Found
Inside m1
KumarAnurag
Inside p1

Library Found

checking the class details...
No of classes present: 2

Class KumarAnurag found...

No of instance methods present in class `KumarAnurag`: 8
Symbol("==") | Type: Symbol => MethodMirror on '==' | Type: _MethodMirror
Symbol("hashCode") | Type: Symbol => MethodMirror on 'hashCode' | Type: _MethodMirror
Symbol("toString") | Type: Symbol => MethodMirror on 'toString' | Type: _MethodMirror
Symbol("noSuchMethod") | Type: Symbol => MethodMirror on 'noSuchMethod' | Type: _MethodMirror
Symbol("runtimeType") | Type: Symbol => MethodMirror on 'runtimeType' | Type: _MethodMirror
Symbol("m1") | Type: Symbol => MethodMirror on 'm1' | Type: _MethodMirror
Symbol("m2") | Type: Symbol => MethodMirror on 'm2' | Type: _MethodMirror
Symbol("m3") | Type: Symbol => MethodMirror on 'm3' | Type: _MethodMirror


Symbol("Kumar Anurag") -> Symbol
Symbol("kmranrg") -> Symbol
Kumar Anurag -> String
kmranrg -> String
Exited

*/
