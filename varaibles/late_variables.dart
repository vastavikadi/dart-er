//Late Variables
//the variable can be declared, but it will be initialized later when it is first accessed. This can be useful when you have a variable that is expensive to initialize or when you want to delay the initialization until it is actually needed. For example:
late String pokemonName; // The variable pokemonName is declared but not initialized
// The variable pokemonName will be initialized when it is first accessed
pokemonName = "pikachu"; // Now pokemonName holds the value "pikachu"


//another example of Late varibles:
late String description;//runtime error occurs if not initialized before accessing it

void main() {
  description = 'Feijoada!';
  print(description);
}
//Another important point to note is that
late String studentName = "Dicklal";
// The variable studentName is declared and initialized with the value "Dicklal".
//the variable is going to be initialized only when it is to be accessed even though we have initialized it with late keyword

//Detailed Explanation of late variables:
// When you mark a variable as late but initialize it at its declaration, then the initializer runs the first time the variable is used. This lazy initialization is handy in a couple of cases:

// The variable might not be needed, and initializing it is costly.
// You're initializing an instance variable, and its initializer needs access to this.

// This is the program's only call to readThermometer().
//late String temperature = readThermometer(); // Lazily initialized.
//readThermometer() is never called, so the variable temperature is never initialized.

