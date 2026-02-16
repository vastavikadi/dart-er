// we dont really need to define the type of the variables and using type inference dart quickly understands the type of the variable based on the initial value and assigns it to the variable

var name = "Aditya"; // String and it stores reference to the string object in memory
//To define the type of the variable explicitly we can use the type annotation like this
String name2 = "Aditya"; // String and it stores reference to the string object in memory
Object name3 = "Aditya"; // Object and it stores reference to the string object in memory
dynamic name4 = "Aditya"; // dynamic is a special type that can hold any type of value and it can change its type at runtime

// Null safety prevents an error that results from unintentional access of variables set to null. The error is called a null dereference error. A null dereference error occurs when you access a property or call a method on an expression that evaluates to null. An exception to this rule is when null supports the property or method, like toString() or hashCode. With null safety, the Dart compiler detects these potential errors at compile time.

//can control the nullability of a variable by using the ? operator after the type annotation. This means that the variable can either hold a value of the specified type or be null. For example:
String? nullableName = null; // String? means that the variable can be a String or null
//To assign a non-null value to a nullable variable, you can simply assign it like this
String nullableName2 = "Aditya"; // Now nullableName holds a non-null String value

// You must initialize variables before using them because non nullable has no initial value and dart does not allow also. Nullable variables default to null, so they are initialized by default. Dart doesn't set initial values to non-nullable types. It forces you to set an initial value.

//DEFAULT VALUES:
// Every variable in Dart has a default value. For non-nullable types, you must provide an initial value, otherwise, the code will not compile. For nullable types, the default value is null. and all variables in dart are objects, even primitive types like int, double, and bool are objects in Dart. This means that they have methods and properties that can be accessed and used just like any other object. For example, you can call the toString() method on an int variable to get its string representation.

//assert is a built-in function in Dart that is used to check if a condition is true. If the condition is false, it throws an AssertionError. This is useful for debugging and testing purposes, as it allows you to catch errors early in the development process. For example:
// var x = 5;
// assert(x > 0); // This will pass because x is greater than 0
// assert(x < 0); // This will throw an AssertionError because x is not less than 0

// ignored in production code, but it can be used to catch errors during development and testing. It's important to note that assertions should not be used for input validation or error handling in production code, as they can be disabled in release builds.

// Top-level and class variables are lazily initialized; the initialization code runs the first time the variable is used. Local variables are not lazily initialized; they are initialized when the function is called.
// top level variables are variables that are declared outside of any class or function and are accessible throughout the entire program. They are initialized when the program starts and remain in memory until the program ends. Class variables, also known as static variables, are variables that are declared within a class and are shared among all instances of that class. They are initialized when the class is first loaded and remain in memory until the program ends. Local variables, on the other hand, are variables that are declared within a function or method and are only accessible within that function or method. They are initialized when the function is called and are destroyed when the function exits.

var age = 25; // int
var height = 5.9; // double
var isStudent = true; // bool

var pokemonArray = ["pikachu", "charmander", "bulbasaur"]; // List<String>

var pokemonSet = {"pikachu", "charmander", "bulbasaur"}; // Set<String>

var pokemonDamage = [23, 45, 67]; // List<int>

var pokemonStats = {
  "attack": 55,
  "defense": 40,
  "speed": 90
}; // Map<String, int>

var pokemonTypes = {
  "pikachu": "electric",
  "charmander": "fire",
  "bulbasaur": "grass"
}; // Map<String, String>

var pokemonList = [
  {"name": "pikachu", "type": "electric"},
  {"name": "charmander", "type": "fire"},
  {"name": "bulbasaur", "type": "grass"}
]; // List<Map<String, String>>

var pokemonDamageList = [
  {"name": "pikachu", "damage": 55},
  {"name": "charmander", "damage": 52},
  {"name": "bulbasaur", "damage": 49}
]; // List<Map<String, dynamic>>

var pokemonObj = {
  "name": "pikachu",
  "type": "electric",
  "level": 25,
  "moves": ["thunderbolt", "quick attack", "agility"]
}; // Map<String, dynamic>