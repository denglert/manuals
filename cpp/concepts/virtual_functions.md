# `virtual` functions in C++

## Definition

In object-oriented programming, when a derived class inherits from a base class, an object of the
derived class may be referred to via a pointer or reference of the base class type instead of the
derived class type. If there are base class methods overridden by the derived class, the method
actually called by such a reference or pointer can be bound either 'early' (by the compiler),
according to the declared type of the pointer or reference, or 'late' (i.e., by the runtime system
of the language), according to the actual type of the object referred to.

Virtual functions are resolved 'late'. If the function in question is 'virtual' in the base class,
the most-derived class's implementation of the function is called according to the actual type of
the object referred to, regardless of the declared type of the pointer or reference. If it is not
'virtual', the method is resolved 'early' and the function called is selected according to the
declared type of the pointer or reference.

Virtual functions allow a program to call methods that don't necessarily even exist at the moment
the code is compiled.

In C++, virtual methods are declared by prepending the virtual keyword to the function's declaration
in the base class. This modifier is inherited by all implementations of that method in derived
classes, meaning that they can continue to over-ride each other and be late-bound. And even if
methods owned by the base class call the virtual method, they will instead be calling the derived
method.

## Example

In this example we have:
- a base class: `class Animal`
- a derived class: `class Cat`

Class definitions:

~~~~
class Animal
{
    public:
    void eat() { std::cout << "I'm eating generic food."; }
}

class Cat : public Animal
{
    public:
    void eat() { std::cout << "I'm eating a rat."; }
}
~~~~

In the main function:

~~~~
Animal *animal = new Animal;
Cat *cat = new Cat;

animal->eat(); // outputs: "I'm eating generic food."
cat->eat();    // outputs: "I'm eating a rat."
~~~~

In case we have a function which takes a pointer of the base class:

~~~~
void func(Animal *xyz) { xyz->eat(); }
~~~~


then unfortunately the pointer will be resolved early (at compile time) and the `eat()` function
will be called from the base class:

~~~~
Animal *animal = new Animal;
Cat *cat = new Cat;

func(animal); // outputs: "I'm eating generic food."
func(cat);    // outputs: "I'm eating generic food."
~~~~

The solution is to make eat() a virtual function:

~~~
class Animal
{
    public:
    virtual void eat() { std::cout << "I'm eating generic food."; }
}
class Cat : public Animal
{
    public:
    void eat() { std::cout << "I'm eating a rat."; }
}
~~~

then repeating the same `func()` calls we have:

~~~~
func(animal); // outputs: "I'm eating generic food."
func(cat);    // outputs: "I'm eating a rat."
~~~~

## References:
- https://en.wikipedia.org/wiki/Virtual_function
- https://stackoverflow.com/questions/2391679/why-do-we-need-virtual-functions-in-c (user: M Perry)
