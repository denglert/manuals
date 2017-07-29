# Static members of a C++ class

The second use of `static` is inside a class definition. while most variables
declared inside a class occur on an instance-by-instance basis (which is to say
that for each instance of a class, the variable can have a different value), a
static member variable has the same value in any instance of the class and
doesn't even require an instance of the class to exist. a helpful way to think
about it is to imagine that the static variables of a class contain information
essential to the making of new member objects (as though a class definition
instance, if you wanted to number your instances of a class, you could use a
static member variable to keep track of the last number used. importantly, it is
good syntax to refer to static member functions through the use of a class name
(class_name::x; rather than instance_of_class.x;). doing so helps to remind the
programmer that static member variables do not belong to a single instance of
the class and that you don't need to have a single instance of a class to use a
static member variable. as you have probably noticed, to access the static
member, you use the scope operator, ::, when you refer to it through the name of
the class.

An important detail to keep in mind when debugging or implementing a program
using a static class member is that you cannot initialize the static class
member inside of the class. in fact, if you decide to put your code in a header
file, you cannot even initialize the static variable inside of the header file;
do it in a .cpp file instead. moreover, you are required to initialize the
static class member or it will not be in scope. (the syntax is a bit weird:
"type class_name::static_variable = value".) 

