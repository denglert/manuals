# Python datamodel


**References:**
- https://docs.python.org/3.7/reference/datamodel.html

## Objects

Objects are Python’s abstraction for data. All data in a Python program is represented by objects or
by relations between objects. (In a sense, and in conformance to Von Neumann’s model of a “stored
program computer,” code is also represented by objects.)

Every object has an identity, a type and a value. An object’s identity never changes once it has
been created; you may think of it as the object’s address in memory.

### `is` operator

The ‘is’ operator compares the identity of two objects.

~~~~
>>> a = [1,2,3]
>>> b = a
>>> a is b
True
>>> a == b
True

whereas

~~~~
>>> a = [1,2,3]
>>> b = [1,2,3]
>>> a is b
False
>>> a == b
True
~~~~


### `id()` function

The `id()` function returns an integer representing its identity.
