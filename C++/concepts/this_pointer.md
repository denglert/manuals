# `this` pointer

Every object in C++ has access to its own address through an important pointer called this pointer.
The this pointer is an implicit parameter to all member functions. Therefore, inside a member
function, this may be used to refer to the invoking object.


## Example

~~~~
Person::Person(int age) {
        _age = age;
}
~~~~

~~~~
Person::Person(int age) {
        this->_age = age;
}
~~~~

## References

- https://www.tutorialspoint.com/cplusplus/cpp_this_pointer.htm
- https://stackoverflow.com/questions/6779645/use-of-this-keyword-in-c
