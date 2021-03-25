/// Interfaces

/*
Theory:

1) An interface defines the syntax that any entity must adhere to.
2) Interfaces define a set of methods available on an object.
3) Dart does not have a syntax for declaring interfaces.
4) Class declarations are themselves interfaces in Dart.
5) Classes should use the `implements` keyword to be able to use an interface.
6) A class must redefine every function in the interface it wishes to implement.
*/

class Printer {
  void print_data() {
    print("----------------Data Printed----------------");
  }
}

class ConsolePrinter implements Printer {
  void print_data() {
    print("----------------Data Printed to Console----------------");
  }
}

class Calculate_Total {
  void ret_tot() {}
}

class Calculate_Discount {
  void ret_dis() {}
}

class Calcualtor implements Calculate_Total, Calculate_Discount {
  int ret_tot() {
    return 2000;
  }

  int ret_dis() {
    return 20;
  }
}

main() {
  /*
  Example 1:

  In this example, we are declaring a class Printer.
  The ConsolePrinter class implements the implicit interface
  declaration for the Printer class. The main function creates
  an object of the ConsolePrinter class using the new keyword.
  This object is used to invoke the function print_data defined
  in the ConsolePrinter class.
  */
  print("1. Implementing Interface");
  ConsolePrinter cp = new ConsolePrinter();
  cp.print_data();

  print("\n2. Implementing Multiple Interface");
  Calcualtor c = new Calcualtor();
  print("The gross total: ${c.ret_tot()}");
  print("Discount: ${c.ret_dis()}");
}

/*
OUTPUT:

1. Implementing Interface
----------------Data Printed to Console----------------

2. Implementing Multiple Interface
The gross total: 2000
Discount: 20
Exited

*/
