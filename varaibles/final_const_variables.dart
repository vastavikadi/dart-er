// final variables are only set once and then can never be changed and same goes for the const variables, although it converts to final only after compilation of the code

final String name = "Jai Ho";
const String course = "Engineering";
final age = 21;
const Subject = "Dart Programming";

void main() {
  // name = "Aditya";//error is gonna be there as name is a final variable and cannot be changed once it is set
  // course = 'Medicine';//error is gonna be there as course is a const variable and cannot be changed once it is set

  final String course = "Mathematics"; // This is a local variable that shadows the global const variable 'course'
  
  print("Student's name is $name and he is studying $course");//here course is going to refer to the local variable course and not the global const variable course because of the shadowing effect. The output will be: Student's name is Jai Ho and he is studying Mathematics

  final time = DateTime.now(); // This is a final variable that is initialized at runtime with the current date and time
  print("Current time is $time");//the output will be the current date and time when

  // const newTime = DateTime.now(); // This will cause a compile-time error because const variables must be initialized with a compile-time constant value, and DateTime.now() is not a compile-time constant.
}

// final = assign once, runtime allowed
// 👉 const = assign once, compile-time only + memory optimized

// Use const → when value is known at compile time (the value needs to be known bfore the program compiles).
// Use final → when value is known only at runtime but won’t change (value needs to be known before the program runs).

//NOTE:
//if the value of two different const variables are same then they will point to the same memory location and this is called canonicalization. This is an optimization technique used by the Dart compiler to save memory and improve performance. When two const variables have the same value, they are considered identical and share the same memory location. This means that if you change the value of one of the const variables, it will not affect the other variable because they are pointing to the same memory location. However, if you change the value of a final variable, it will not affect any other variable because final variables are not subject to canonicalization.

// Using const:
// Improves performance
// Prevents unnecessary rebuilds
// Saves memory