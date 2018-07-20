# Python glossary

**References:**
- https://docs.python.org/3.7/glossary.html

## Hashable

- https://stackoverflow.com/questions/14535730/what-do-you-mean-by-hashable-in-python

An object is *hashable* if it has a hash value which never changes during its lifetime (it needs a
`__hash__()` method), and can be compared to other objects (it needs an `__eq__()` method). Hashable
objects which compare equal must have the same hash value.

Hashability makes an object usable as a dictionary key and a set member, because these data
structures use the hash value internally.


**Hashable:**
- All of Python’s immutable built-in objects are hashable
- Objects which are instances of user-defined classes are hashable by default.
    They all compare unequal (except with themselves), and their hash value is derived from their `id()`.

**Not hashable:**
- mutable containers (e.g.lists or dictionaries) are not hashable.

