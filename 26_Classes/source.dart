/// Classes in Dart

/*
Theory:

1) Dart is an object-oriented language.
2) It supports object-oriented programming features like classes, interfaces, etc.
3) A class in terms of OOP is a blueprint for creating objects.
4) A class encapsulates data for the object.
*/

class Car1 {
  // field
  String engine = "E100";

  // function
  void disp() {
    print(engine);
  }
}

class Car2 {
  Car2(String engine) {
    print(engine);
  }
  void disp() {
    print("Data has already been printed from constructor.");
  }
}

class Car3 {
  Car3() {
    print("Non-parameterized constructor invoked");
  }

  Car3.myNewNamedConstructor(String engine) {
    print("The engine is: ${engine}");
  }
  void disp() {
    print(
        "Data has already been printed from normal constructor or named constructor.");
  }
}

class Car4 {
  String engine = "BMW100";

  Car4(String engine) {
    this.engine = engine;
  }

  void disp() {
    print("this.engine: ${this.engine}");
    print("engine: $engine");
  }
}

class Student {
  String name = "";
  var age = null;

  String get stud_name {
    return name;
  }

  void set stud_name(String name) {
    this.name = name;
  }

  void set stud_age(var age) {
    if (age <= 0) {
      print("Age should be greater than 0.");
    } else {
      this.age = age;
    }
  }

  get stud_age {
    return age;
  }
}

class Shape {
  void cal_area() {
    print("calling calc area defined in the Shape class");
  }
}

class Circle extends Shape {}

class Root {
  var str = null;
}

class Child extends Root {}

class Leaf extends Child {}

class Parent {
  void m1(int a) {
    print("From Parent Class: value of a - ${a}");
  }
}

class NewChild extends Parent {
  @override
  void m1(int b) {
    print("From NewChild Class: value of b - ${b}");
  }
}

class StaticMem {
  static int num = 100;
  static disp() {
    print("The value of num is ${StaticMem.num}");
  }
}

class ParentClass {
  String msg = "message variable from the parent class";
  void m1(int a) {
    print("value of a ${a}");
  }
}

class ChildClass extends ParentClass {
  @override
  void m1(int b) {
    print("value of b ${b}");
    super.m1(13); // it will call the `m1()` of ParentClass
    print(
        "${super.msg}"); // it will also print the value of `msg` of ParentClass
  }
}

main() {
  print("1. Accessing Class Attributes and Functions:");
  Car1 c1 = new Car1();
  c1.disp();

  print("\n2. Dart Constructors:");
  /*
  NOTE: Difference between function and constructor

  Functions can have return type but constructors can't.
  */
  Car2 c2 = new Car2("E2020");
  c2.disp();

  print("\n3. Named Constructor:");
  /*
  Named Constructor:

  Dart provides `Named Constructors` to enable 
  a class define multiple constructors.
  */
  Car3 c31 = new Car3();
  c31.disp();
  Car3 c32 = new Car3.myNewNamedConstructor("E300");
  c32.disp();

  print("\n4. this Keyword:");
  /*
  KNOWLEDGE CLOUD:

  1) The this keyword refers to the current instance of the class.
  2) Here, the parameter name and the name of the class’s field are the same.
  3) Hence to avoid ambiguity, the class’s field is prefixed with the this keyword.
  */
  Car4 c4 = new Car4("MERC500");
  c4.disp();

  print("\n5. Getters & Setters");
  /*
  Getters and Setters:

  1) Getters and Setters, also called as accessors and mutators respectively.
  2) They allow the program to initialize and retrieve the values of class fields respectively.
  3) Getters or accessors are defined using the get keyword.
  4) Setters or mutators are defined using the set keyword.
  5) A default getter/setter is associated with every class.
  6) However, the default ones can be overridden by explicitly defining a setter/ getter.
  7) A getter has no parameters and returns a value.
  8) The setter has one parameter and does not return a value.
  */
  Student s = new Student();
  s.stud_name = "Anurag";
  s.stud_age = -10;
  String name = s.stud_name;
  var age = s.stud_age;
  print(name);
  print(age);

  print("\n6. Inheritance:");
  /*
  Class Inheritance:

  1) Dart supports the concept of Inheritance
     which is the ability of a program to create new classes from an existing class.
  2) The class that is extended to create newer classes is called the parent class/super class.
  3) The newly created classes are called the child/sub classes.
  4) Child classes inherit all properties and methods except constructors from the parent class.
  5) Dart doesn’t support multiple inheritance.
  */
  var obj = new Circle();
  obj.cal_area();

  print("\n7. Multi-level Inheritance:");
  var new_obj = new Leaf();
  new_obj.str = "hello anurag";
  print(new_obj);
  print(new_obj.str);

  print("\n8. Method Overriding");
  NewChild new_c = new NewChild();
  new_c.m1(12); // it will call the NewChild class m1 method not Parent class
  /*
  NOTE:

  1) The number and type of the function parameters must match while overriding the method.
  2) In case of a mismatch in the number of parameters or their data type, the Dart compiler throws an error.
  */

  print("\n9. static Keyword:");
  /*
  KNOWLEDGE CLOUD:

  1) The static keyword can be applied to the data members of a class, i.e., fields and methods.
  2) A static variable retains its values till the program finishes execution.
  3) Static members are referenced by the class name.
  4) Static members can not be used by class objects.
  5) Use of static variables and Methods: static members helps in saving the memory
     because it is not declared again and again. It's declared only once and remains
     same for the class unlike the normal variable as normal variable is different
     for each object and is declared again and again.
  */
  StaticMem.num = 500;
  StaticMem.disp();
  StaticMem.num = 1200; // we can change the static variable value also
  StaticMem.disp();

  print("\n10. super Keyword:");
  /*
  KNOWLEDGE CLOUD:

  1) The super keyword is used to refer to the immediate parent of a class.
  2) The keyword can be used to refer to the super class version of a variable, property, or method.
  */
  ChildClass cc = new ChildClass();
  cc.m1(100); // it will call the `m1()` of ChildClass not ParentClass
}

/*
OUTPUT:

1. Accessing Class Attributes and Functions:
E100

2. Dart Constructors:
E2020
Data has already been printed from constructor.

3. Named Constructor:
Non-parameterized constructor invoked
Data has already been printed from normal constructor or named constructor.
The engine is: E300
Data has already been printed from normal constructor or named constructor.

4. this Keyword:
this.engine: MERC500
engine: MERC500

5. Getters & Setters
Age should be greater than 0.
Anurag
null

6. Inheritance:
calling calc area defined in the Shape class

7. Multi-level Inheritance:
Instance of 'Leaf'
hello anurag

8. Method Overriding
From NewChild Class: value of b - 12

9. static Keyword:
The value of num is 500
The value of num is 1200

10. super Keyword:
value of b 100
value of a 13
message variable from the parent class
Exited

*/
