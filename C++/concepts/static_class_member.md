# Static members of a C++ class

## `static` member variable

Another use of `static` is inside a class definition. While most variables
declared inside a class occur on an instance-by-instance basis (which is to say
that for each instance of a class, the variable can have a different value), a
static member variable has the same value in any instance of the class and
doesn't even require an instance of the class to exist. A helpful way to think
about it is to imagine that the static variables of a class contain information
essential to the making of new member objects (as though a class definition
instance, if you wanted to number your instances of a class, you could use a
static member variable to keep track of the last number used. Importantly, it
is good syntax to refer to static member functions through the use of a class
name (`class_name::x`; rather than `instance_of_class.x;`). Doing so helps to
remind the programmer that static member variables do not belong to a single
instance of the class and that you don't need to have a single instance of a
class to use a static member variable. As you have probably noticed, to access
the static member, you use the scope operator, `::`, when you refer to it
through the name of the class.

An important detail to keep in mind when debugging or implementing a program
using a static class member is that you cannot initialize the static class
member inside of the class. In fact, if you decide to put your code in a header
file, you cannot even initialize the static variable inside of the header file;
do it in a `.cpp` file instead. Moreover, you are required to initialize the
static class member or it will not be in scope. (the syntax is a bit weird:
"`type class_name::static_variable = value`".) 

## `static` member function

Like static member variables, static member functions are not attached to any
particular object. Here is the above example with a static member function
accessor:

~~~~
class Something
{
private:
    static int s_value;
public:
    static int getValue() { return s_value; } // static member function
};
 
int Something::s_value = 1; // initializer
 
int main()
{
    std::cout << Something::getValue() << '\n';
}
~~~~

Because static member functions are not attached to a particular object, they
can be called directly by using the class name and the scope resolution
operator. Like static member variables, they can also be called through objects
of the class type, though this is not recommended.

## References

- http://www.learncpp.com/cpp-tutorial/811-static-member-variables/
- http://www.learncpp.com/cpp-tutorial/812-static-member-functions/
